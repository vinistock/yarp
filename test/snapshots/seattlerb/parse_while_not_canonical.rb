ProgramNode(0...26)(
  ScopeNode(0...0)([]),
  StatementsNode(0...26)(
    [WhileNode(0...26)(
       KEYWORD_WHILE(0...5)("while"),
       CallNode(6...18)(
         CallNode(10...18)(
           CallNode(10...13)(
             nil,
             nil,
             IDENTIFIER(10...13)("var"),
             nil,
             nil,
             nil,
             nil,
             "var"
           ),
           DOT(13...14)("."),
           IDENTIFIER(14...18)("nil?"),
           nil,
           nil,
           nil,
           nil,
           "nil?"
         ),
         nil,
         KEYWORD_NOT(6...9)("not"),
         nil,
         nil,
         nil,
         nil,
         "!"
       ),
       StatementsNode(21...26)(
         [StringNode(21...26)(
            STRING_BEGIN(21...22)("'"),
            STRING_CONTENT(22...25)("foo"),
            STRING_END(25...26)("'"),
            "foo"
          )]
       )
     )]
  )
)