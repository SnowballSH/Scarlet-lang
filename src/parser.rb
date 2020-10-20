#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.0
# from Racc grammar file "".
#

require 'racc/parser.rb'

  require "#{File.dirname(__FILE__)}/lexer.rb"
  require "#{File.dirname(__FILE__)}/nodes.rb"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y.rb/module_eval...', 'grammar.y.rb', 140)
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end
  
  def next_token
    @tokens.shift
  end
  
...end grammar.y.rb/module_eval...
##### State transition tables begin ###

racc_action_table = [
    24,    25,     5,    17,    18,    19,    20,    21,    22,    23,
    24,    25,     5,    17,    18,    19,    20,    21,    22,    23,
    29,    73,    40,    41,    71,    28,    29,    15,    29,    16,
    40,    41,    38,    39,    28,    47,    46,    15,    45,    16,
    24,    25,    82,    17,    18,    19,    20,    21,    22,    23,
    24,    25,    16,    17,    18,    19,    20,    21,    22,    23,
    29,    16,    40,    41,    38,    39,    29,    15,    67,    29,
    48,    40,    41,    38,    39,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,    24,    25,    49,    17,    18,
    19,    20,    21,    22,    23,    29,    52,    40,    41,    79,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
    83,    77,    84,    76,    50,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,    26,    71,    45,    85,    71,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
   nil,   nil,   nil,   nil,   nil,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,   nil,   nil,   nil,   nil,   nil,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
   nil,   nil,   nil,   nil,   nil,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,   nil,   nil,   nil,   nil,   nil,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
    24,    25,    15,    17,    18,    19,    20,    21,    22,    23,
   nil,   nil,   nil,   nil,   nil,    24,    25,    15,    17,    18,
    19,    20,    21,    22,    23,   nil,    29,    15,    40,    41,
    38,    39,    34,    35,    36,    37,    32,    33,    31,    30,
   nil,   nil,    15,    65,    29,   nil,    40,    41,    38,    39,
    34,    35,    36,    37,    32,    33,    31,    30,    29,   nil,
    40,    41,    38,    39,    34,    35,    36,    37,    32,    33,
    31,    30,    29,   nil,    40,    41,    38,    39,    34,    35,
    36,    37,    32,    33,    31,    30,    29,   nil,    40,    41,
    38,    39,    34,    35,    36,    37,    32,    33,    31,    30,
    29,   nil,    40,    41,    38,    39,    34,    35,    36,    37,
    32,    33,    31,    30,    29,   nil,    40,    41,    38,    39,
    34,    35,    36,    37,    32,    33,    31,    30,    29,   nil,
    40,    41,    38,    39,    34,    35,    36,    37,    32,    33,
    31,    30,    29,   nil,    40,    41,    38,    39,    34,    35,
    36,    37,    32,    33,    31,    29,   nil,    40,    41,    38,
    39,    34,    35,    36,    37,    32,    33,    29,   nil,    40,
    41,    38,    39,    34,    35,    36,    37,    29,   nil,    40,
    41,    38,    39,    34,    35,    36,    37,    29,   nil,    40,
    41,    38,    39 ]

racc_action_check = [
    71,    71,    71,    71,    71,    71,    71,    71,    71,    71,
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    61,    48,    61,    61,    48,     2,    64,    71,    58,    71,
    58,    58,    58,    58,    78,    23,    22,     0,    22,     0,
    45,    45,    78,    45,    45,    45,    45,    45,    45,    45,
     5,     5,     2,     5,     5,     5,     5,     5,     5,     5,
    60,    78,    60,    60,    60,    60,    63,    45,    45,    57,
    24,    57,    57,    57,    57,    47,    47,     5,    47,    47,
    47,    47,    47,    47,    47,    46,    46,    25,    46,    46,
    46,    46,    46,    46,    46,    62,    29,    62,    62,    73,
    15,    15,    47,    15,    15,    15,    15,    15,    15,    15,
    77,    77,    46,    77,    77,    77,    77,    77,    77,    77,
    80,    68,    80,    68,    26,    41,    41,    15,    41,    41,
    41,    41,    41,    41,    41,    27,    27,    77,    27,    27,
    27,    27,    27,    27,    27,     1,    49,    52,    83,    84,
    40,    40,    41,    40,    40,    40,    40,    40,    40,    40,
    30,    30,    27,    30,    30,    30,    30,    30,    30,    30,
   nil,   nil,   nil,   nil,   nil,    31,    31,    40,    31,    31,
    31,    31,    31,    31,    31,    32,    32,    30,    32,    32,
    32,    32,    32,    32,    32,   nil,   nil,   nil,   nil,   nil,
    33,    33,    31,    33,    33,    33,    33,    33,    33,    33,
    34,    34,    32,    34,    34,    34,    34,    34,    34,    34,
   nil,   nil,   nil,   nil,   nil,    35,    35,    33,    35,    35,
    35,    35,    35,    35,    35,    36,    36,    34,    36,    36,
    36,    36,    36,    36,    36,   nil,   nil,   nil,   nil,   nil,
    37,    37,    35,    37,    37,    37,    37,    37,    37,    37,
    38,    38,    36,    38,    38,    38,    38,    38,    38,    38,
   nil,   nil,   nil,   nil,   nil,    39,    39,    37,    39,    39,
    39,    39,    39,    39,    39,   nil,    43,    38,    43,    43,
    43,    43,    43,    43,    43,    43,    43,    43,    43,    43,
   nil,   nil,    39,    43,    42,   nil,    42,    42,    42,    42,
    42,    42,    42,    42,    42,    42,    42,    42,     3,   nil,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,    81,   nil,    81,    81,    81,    81,    81,    81,
    81,    81,    81,    81,    81,    81,    70,   nil,    70,    70,
    70,    70,    70,    70,    70,    70,    70,    70,    70,    70,
    69,   nil,    69,    69,    69,    69,    69,    69,    69,    69,
    69,    69,    69,    69,    66,   nil,    66,    66,    66,    66,
    66,    66,    66,    66,    66,    66,    66,    66,    51,   nil,
    51,    51,    51,    51,    51,    51,    51,    51,    51,    51,
    51,    51,    53,   nil,    53,    53,    53,    53,    53,    53,
    53,    53,    53,    53,    53,    54,   nil,    54,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    56,   nil,    56,
    56,    56,    56,    56,    56,    56,    56,    55,   nil,    55,
    55,    55,    55,    55,    55,    55,    55,    59,   nil,    59,
    59,    59,    59 ]

racc_action_pointer = [
     8,   145,    21,   305,   nil,    48,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    98,   nil,   nil,   nil,   nil,
   nil,   nil,     9,     8,    60,    76,   124,   133,   nil,    86,
   158,   173,   183,   198,   208,   223,   233,   248,   258,   273,
   148,   123,   291,   273,   nil,    38,    83,    73,    -8,   114,
   nil,   375,   118,   389,   402,   424,   414,    56,    15,   434,
    47,     7,    82,    53,    13,   nil,   361,   nil,    93,   347,
   333,    -2,   nil,    89,   nil,   nil,   nil,   108,    30,   nil,
    92,   319,   nil,   138,   117,   nil,   nil ]

racc_action_default = [
    -1,   -55,    -2,    -3,    -6,   -18,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -55,   -19,   -20,   -21,   -22,
   -23,   -24,   -49,   -47,   -55,   -55,   -55,    -5,   -18,   -55,
   -55,   -55,   -55,   -55,   -55,   -55,   -55,   -55,   -55,   -55,
   -55,   -55,    -7,   -55,   -25,   -55,   -55,   -55,   -55,   -55,
    87,    -4,   -27,   -35,   -36,   -37,   -38,   -39,   -40,   -41,
   -42,   -43,   -44,   -45,   -46,   -17,   -30,   -28,   -55,   -50,
   -48,   -55,   -52,   -32,   -54,   -26,   -29,   -55,   -55,   -33,
   -55,   -31,   -51,   -55,   -55,   -34,   -53 ]

racc_goto_table = [
    27,    42,    80,     2,    72,    74,    68,     1,    44,   nil,
   nil,    43,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    51,   nil,   nil,    53,    54,    55,    56,
    57,    58,    59,    60,    61,    62,    63,    64,    75,   nil,
    86,    66,    69,    70,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    81,    78,   nil,    27 ]

racc_goto_check = [
     4,     3,    16,     2,    17,    17,    15,     1,    14,   nil,
   nil,     3,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     3,   nil,   nil,     3,     3,     3,     3,
     3,     3,     3,     3,     3,     3,     3,     3,    14,   nil,
    17,     3,     3,     3,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     3,     2,   nil,     4 ]

racc_goto_pointer = [
   nil,     7,     3,    -4,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   -14,   -39,   -71,   -44 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     6,     7,     8,     9,    10,
    11,    12,    13,    14,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 34, :_reduce_1,
  1, 34, :_reduce_2,
  1, 35, :_reduce_3,
  3, 35, :_reduce_4,
  2, 35, :_reduce_5,
  1, 35, :_reduce_6,
  2, 35, :_reduce_7,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  1, 36, :_reduce_none,
  3, 36, :_reduce_17,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 38, :_reduce_20,
  1, 38, :_reduce_21,
  1, 38, :_reduce_22,
  1, 38, :_reduce_23,
  1, 38, :_reduce_24,
  2, 39, :_reduce_25,
  4, 39, :_reduce_26,
  3, 39, :_reduce_27,
  2, 47, :_reduce_28,
  3, 47, :_reduce_29,
  1, 48, :_reduce_30,
  3, 48, :_reduce_31,
  0, 49, :_reduce_32,
  1, 49, :_reduce_33,
  3, 49, :_reduce_34,
  3, 40, :_reduce_35,
  3, 40, :_reduce_36,
  3, 40, :_reduce_37,
  3, 40, :_reduce_38,
  3, 40, :_reduce_39,
  3, 40, :_reduce_40,
  3, 40, :_reduce_41,
  3, 40, :_reduce_42,
  3, 40, :_reduce_43,
  3, 40, :_reduce_44,
  3, 40, :_reduce_45,
  3, 40, :_reduce_46,
  1, 41, :_reduce_47,
  3, 42, :_reduce_48,
  1, 43, :_reduce_49,
  3, 44, :_reduce_50,
  3, 50, :_reduce_51,
  3, 45, :_reduce_52,
  6, 45, :_reduce_53,
  3, 46, :_reduce_54 ]

racc_reduce_n = 55

racc_shift_n = 87

racc_token_table = {
  false => 0,
  :error => 1,
  :DEF => 2,
  :CLASS => 3,
  :NEWLINE => 4,
  :NUMBER => 5,
  :STRING => 6,
  :TRUE => 7,
  :FALSE => 8,
  :NIL => 9,
  :IDENTIFIER => 10,
  :CONSTANT => 11,
  :END => 12,
  "." => 13,
  "!" => 14,
  "*" => 15,
  "/" => 16,
  "+" => 17,
  "-" => 18,
  ">" => 19,
  ">=" => 20,
  "<" => 21,
  "<=" => 22,
  "==" => 23,
  "!=" => 24,
  "&&" => 25,
  "||" => 26,
  "=" => 27,
  "," => 28,
  "(" => 29,
  ")" => 30,
  ";" => 31,
  ":" => 32 }

racc_nt_base = 33

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "CONSTANT",
  "END",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "\":\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "GetConstant",
  "SetConstant",
  "GetLocal",
  "SetLocal",
  "Def",
  "Class",
  "Arguments",
  "ArgList",
  "ParamList",
  "Block" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y.rb', 28)
  def _reduce_1(val, _values, result)
     result = Nodes.new([])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 29)
  def _reduce_2(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 33)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val)
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 34)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 35)
  def _reduce_5(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 36)
  def _reduce_6(val, _values, result)
     result = Nodes.new([])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 37)
  def _reduce_7(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

module_eval(<<'.,.,', 'grammar.y.rb', 50)
  def _reduce_17(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 18 omitted

# reduce 19 omitted

module_eval(<<'.,.,', 'grammar.y.rb', 59)
  def _reduce_20(val, _values, result)
     result = NumberNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 60)
  def _reduce_21(val, _values, result)
     result = StringNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 61)
  def _reduce_22(val, _values, result)
     result = TrueNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 62)
  def _reduce_23(val, _values, result)
     result = FalseNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 63)
  def _reduce_24(val, _values, result)
     result = NilNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 67)
  def _reduce_25(val, _values, result)
     result = CallNode.new(nil, val[0], val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 69)
  def _reduce_26(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 70)
  def _reduce_27(val, _values, result)
     result = CallNode.new(val[0], val[2], [])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 74)
  def _reduce_28(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 75)
  def _reduce_29(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 79)
  def _reduce_30(val, _values, result)
     result = val
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 80)
  def _reduce_31(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 84)
  def _reduce_32(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 85)
  def _reduce_33(val, _values, result)
     result = val
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 86)
  def _reduce_34(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 90)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 91)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 92)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 93)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 94)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 95)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 96)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 97)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 98)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 99)
  def _reduce_44(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 100)
  def _reduce_45(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 101)
  def _reduce_46(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 105)
  def _reduce_47(val, _values, result)
     result = GetConstantNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 109)
  def _reduce_48(val, _values, result)
     result = SetConstantNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 113)
  def _reduce_49(val, _values, result)
     result = GetLocalNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 117)
  def _reduce_50(val, _values, result)
     result = SetLocalNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 121)
  def _reduce_51(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 125)
  def _reduce_52(val, _values, result)
     result = DefNode.new(val[1], [], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 127)
  def _reduce_53(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 131)
  def _reduce_54(val, _values, result)
     result = ClassNode.new(val[1], val[2])
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser