ProgramNode(0...331)(
  [],
  StatementsNode(0...331)(
    [CallNode(0...28)(
       nil,
       nil,
       IDENTIFIER(0...1)("p"),
       nil,
       ArgumentsNode(2...28)(
         [InterpolatedStringNode(2...28)(
            (2...8),
            [StringNode(9...17)(
               nil,
               STRING_CONTENT(9...17)("    x\n" + "  "),
               nil,
               "  x\n"
             ),
             StringInterpolatedNode(17...25)(
               (17...19),
               StatementsNode(19...24)(
                 [StringNode(19...24)(
                    STRING_BEGIN(19...20)("\""),
                    STRING_CONTENT(20...23)("  y"),
                    STRING_END(23...24)("\""),
                    "  y"
                  )]
               ),
               (24...25)
             ),
             StringNode(25...26)(
               nil,
               STRING_CONTENT(25...26)("\n"),
               nil,
               "\n"
             )],
            (26...28)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(29...55)(
       nil,
       nil,
       IDENTIFIER(29...30)("p"),
       nil,
       ArgumentsNode(31...55)(
         [InterpolatedStringNode(31...55)(
            (31...37),
            [StringNode(38...46)(
               nil,
               STRING_CONTENT(38...46)("    x\n" + "  "),
               nil,
               "  x\n"
             ),
             StringInterpolatedNode(46...52)(
               (46...48),
               StatementsNode(48...51)(
                 [CallNode(48...51)(
                    nil,
                    nil,
                    IDENTIFIER(48...51)("foo"),
                    nil,
                    nil,
                    nil,
                    nil,
                    "foo"
                  )]
               ),
               (51...52)
             ),
             StringNode(52...53)(
               nil,
               STRING_CONTENT(52...53)("\n"),
               nil,
               "\n"
             )],
            (53...55)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(56...78)(
       nil,
       nil,
       IDENTIFIER(56...57)("p"),
       nil,
       ArgumentsNode(58...78)(
         [InterpolatedStringNode(58...78)(
            (58...62),
            [StringNode(63...76)(
               nil,
               STRING_CONTENT(63...76)("\tx\n" + "        y\n"),
               nil,
               "x\n" + "y\n"
             )],
            (76...78)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(79...97)(
       nil,
       nil,
       IDENTIFIER(79...80)("p"),
       nil,
       ArgumentsNode(81...97)(
         [InterpolatedStringNode(81...97)(
            (81...85),
            [StringNode(86...95)(
               nil,
               STRING_CONTENT(86...95)("\tx\n" + "    y\n"),
               nil,
               "\tx\n" + "y\n"
             )],
            (95...97)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(98...124)(
       nil,
       nil,
       IDENTIFIER(98...99)("p"),
       nil,
       ArgumentsNode(100...124)(
         [InterpolatedStringNode(100...124)(
            (100...104),
            [StringNode(105...122)(
               nil,
               STRING_CONTENT(105...122)("    \tx\n" + "        y\n"),
               nil,
               "x\n" + "y\n"
             )],
            (122...124)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(125...148)(
       nil,
       nil,
       IDENTIFIER(125...126)("p"),
       nil,
       ArgumentsNode(127...148)(
         [InterpolatedStringNode(127...148)(
            (127...131),
            [StringNode(132...146)(
               nil,
               STRING_CONTENT(132...146)("        \tx\n" + "\ty\n"),
               nil,
               "\tx\n" + "y\n"
             )],
            (146...148)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(149...170)(
       nil,
       nil,
       IDENTIFIER(149...150)("p"),
       nil,
       ArgumentsNode(151...170)(
         [InterpolatedStringNode(151...170)(
            (151...155),
            [StringNode(156...168)(
               nil,
               STRING_CONTENT(156...168)("    x\n" + "  \\\ty\n"),
               nil,
               "  x\n" + "\ty\n"
             )],
            (168...170)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(171...193)(
       nil,
       nil,
       IDENTIFIER(171...172)("p"),
       nil,
       ArgumentsNode(173...193)(
         [InterpolatedStringNode(173...193)(
            (173...177),
            [StringNode(178...191)(
               nil,
               STRING_CONTENT(178...191)("    x\n" + "  \\  y\n"),
               nil,
               "  x\n" + "  y\n"
             )],
            (191...193)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(194...205)(
       nil,
       nil,
       IDENTIFIER(194...195)("p"),
       nil,
       ArgumentsNode(196...205)(
         [InterpolatedStringNode(196...205)((196...200), [], (201...205))]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(206...222)(
       nil,
       nil,
       IDENTIFIER(206...207)("p"),
       nil,
       ArgumentsNode(208...222)(
         [InterpolatedStringNode(208...222)(
            (208...212),
            [StringNode(213...220)(
               nil,
               STRING_CONTENT(213...220)("  x\n" + "\n" + "y\n"),
               nil,
               "  x\n" + "\n" + "y\n"
             )],
            (220...222)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(223...245)(
       nil,
       nil,
       IDENTIFIER(223...224)("p"),
       nil,
       ArgumentsNode(225...245)(
         [InterpolatedStringNode(225...245)(
            (225...229),
            [StringNode(230...243)(
               nil,
               STRING_CONTENT(230...243)("  x\n" + "    \n" + "  y\n"),
               nil,
               "x\n" + "  \n" + "y\n"
             )],
            (243...245)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(246...265)(
       nil,
       nil,
       IDENTIFIER(246...247)("p"),
       nil,
       ArgumentsNode(248...265)(
         [InterpolatedStringNode(248...265)(
            (248...252),
            [StringNode(253...263)(
               nil,
               STRING_CONTENT(253...263)("  x\n" + "    y\n"),
               nil,
               "x\n" + "  y\n"
             )],
            (263...265)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(266...279)(
       nil,
       nil,
       IDENTIFIER(266...267)("p"),
       nil,
       ArgumentsNode(268...279)(
         [InterpolatedStringNode(268...279)(
            (268...272),
            [StringNode(273...277)(
               nil,
               STRING_CONTENT(273...277)("  x\n"),
               nil,
               "x\n"
             )],
            (277...279)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(280...294)(
       nil,
       nil,
       IDENTIFIER(280...281)("p"),
       nil,
       ArgumentsNode(282...294)(
         [InterpolatedStringNode(282...294)(
            (282...286),
            [StringNode(287...292)(
               nil,
               STRING_CONTENT(287...292)("  ð\n"),
               nil,
               "ð\n"
             )],
            (292...294)
          )]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(295...304)(
       nil,
       nil,
       IDENTIFIER(295...296)("p"),
       nil,
       ArgumentsNode(297...304)(
         [InterpolatedStringNode(297...304)((297...301), [], (302...304))]
       ),
       nil,
       nil,
       "p"
     ),
     CallNode(305...331)(
       nil,
       nil,
       IDENTIFIER(305...306)("p"),
       nil,
       ArgumentsNode(307...331)(
         [InterpolatedXStringNode(307...331)(
            (307...313),
            [StringNode(314...322)(
               nil,
               STRING_CONTENT(314...322)("    x\n" + "  "),
               nil,
               "  x\n"
             ),
             StringInterpolatedNode(322...328)(
               (322...324),
               StatementsNode(324...327)(
                 [CallNode(324...327)(
                    nil,
                    nil,
                    IDENTIFIER(324...327)("foo"),
                    nil,
                    nil,
                    nil,
                    nil,
                    "foo"
                  )]
               ),
               (327...328)
             ),
             StringNode(328...329)(
               nil,
               STRING_CONTENT(328...329)("\n"),
               nil,
               "\n"
             )],
            (329...331)
          )]
       ),
       nil,
       nil,
       "p"
     )]
  )
)
