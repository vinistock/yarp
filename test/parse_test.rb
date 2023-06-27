# frozen_string_literal: true

require "yarp_test_helper"

class ParseTest < Test::Unit::TestCase
  def test_Ruby_3_2_plus
    assert_operator RUBY_VERSION, :>=, "3.2.0", "ParseTest requires Ruby 3.2+"
  end

  def test_empty_string
    YARP.parse("") => YARP::ParseResult[value: YARP::ProgramNode[statements: YARP::StatementsNode[body: []]]]
  end

  known_failures = %w[
    seattlerb/heredoc_nested.txt
    seattlerb/pct_w_heredoc_interp_nested.txt
  ]

  def find_source_file_node(node)
    if node.is_a?(YARP::SourceFileNode)
      node
    else
      node && node.child_nodes.each do |child_node|
        source_file_node = find_source_file_node(child_node)
        return source_file_node if source_file_node
      end
    end
  end

  def test_parse_takes_file_path
    filepath = "filepath.rb"
    parsed_result = YARP.parse("def foo; __FILE__; end", filepath)

    assert_equal filepath, find_source_file_node(parsed_result.value).filepath
  end

  base = File.join(__dir__, "fixtures")
  Dir["**/*.txt", base: base].each do |relative|
    next if known_failures.include?(relative)

    filepath = File.join(base, relative)
    snapshot = File.expand_path(File.join("snapshots", relative), __dir__)
    directory = File.dirname(snapshot)
    FileUtils.mkdir_p(directory) unless File.directory?(directory)

    define_method "test_filepath_#{relative}" do
      # First, read the source from the filepath. Use binmode to avoid converting CRLF on Windows,
      # and explicitly set the external encoding to UTF-8 to override the binmode default.
      source = File.read(filepath, binmode: true, external_encoding: Encoding::UTF_8)

      # Make sure that it can be correctly parsed by Ripper. If it can't, then we have a fixture
      # that is invalid Ruby.
      refute_nil Ripper.sexp_raw(source)

      # Next, assert that there were no errors during parsing.
      result = YARP.parse_file(filepath)
      assert_empty result.errors

      # Next, parse the source and print the value.
      serialized = YARP.dump(source, relative)

      if File.exist?(snapshot)
        saved = File.binread(snapshot)

        # If the snapshot file exists, but the printed value does not match the
        # snapshot, then update the snapshot file.
        if serialized != saved
          File.write(snapshot, serialized)
          warn("Updated snapshot at #{snapshot}.")
        end

        # If the snapshot file exists, then assert that the printed value
        # matches the snapshot.
        assert_equal(saved, serialized)
      else
        # If the snapshot file does not yet exist, then write it out now.
        File.write(snapshot, serialized)
        warn("Created snapshot at #{snapshot}.")
      end

      # Next, assert that the value can be serialized and deserialized without
      # changing the shape of the tree.
      assert_equal_nodes(result.value, YARP.load(source, YARP.dump(source, relative)))

      # Next, assert that the newlines are in the expected places.
      expected_newlines = [0]
      source.b.scan("\n") { expected_newlines << $~.offset(0)[0] + 1 }
      assert_equal expected_newlines, YARP.newlines(source)

      # Finally, assert that we can lex the source and get the same tokens as
      # Ripper.
      YARP.lex_compat(source) => { errors: [], value: tokens }

      begin
        YARP.lex_ripper(source).zip(tokens).each do |(ripper, yarp)|
          assert_equal ripper, yarp
        end
      rescue SyntaxError
        raise ArgumentError, "Test file has invalid syntax #{filepath}"
      end
    end
  end
end
