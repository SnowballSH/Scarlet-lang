class Parser

token DEF CLASS

token NEWLINE
token NUMBER
token STRING
token TRUE FALSE NIL
token IDENTIFIER
token CONSTANT
token DBEQ NTEQ LT GT LTEQ GTEQ
token END

prechigh
  left  '.'
  right '!'
  left  '*' '/'
  left  '+' '-'
  left  GT GTEQ LT LTEQ
  left  DBEQ NTEQ AND OR
  left  AND
  left  OR
  right '='
  left  ','
preclow

rule

Program:
  /* nothing */          { result = Nodes.new([]) }
  | Expressions          { result = val[0] }
;

Expressions:
    Expression                         { result = Nodes.new(val) }
  | Expressions Terminator Expression  { result = val[0] << val[2] }
  | Expressions Terminator             { result = val[0] }
  | Terminator                         { result = Nodes.new([]) }
  | NEWLINE Expression                 { result = Nodes.new([val[1]]) }
;

Expression:
    Literal
  | Call
  | Operator
  | GetConstant
  | SetConstant
  | GetLocal
  | SetLocal
  | GetGlobal
  | SetGlobal
  | Def
  | Class
  | '(' Expression ')'    { result = val[1] }
;

Terminator:
    NEWLINE
  | ";"
;

Literal:
    NUMBER         { result = NumberNode.new(val[0]) }
  | STRING         { result = StringNode.new(val[0]) }
  | TRUE           { result = TrueNode.new }
  | FALSE          { result = FalseNode.new }
  | NIL            { result = NilNode.new }
;

Call:
    IDENTIFIER Arguments          { result = CallNode.new(nil, val[0], val[1]) }
  | Expression "." IDENTIFIER
      Arguments                   { result = CallNode.new(val[0], val[2], val[3]) }
;

Arguments:
    "(" ")"                       { result = [] }
  | "(" ArgList ")"               { result = val[1] }
  | "!"                           { result = [] }
;

ArgList:
    Expression                    { result = val }
  | ArgList "," Expression        { result = val[0] << val[2] }
;

ParamList:
    /* nothing */                 { result = [] }
  | IDENTIFIER                    { result = val }
  | ParamList "," IDENTIFIER      { result = val[0] << val[2] }
;

Operator:
    Expression OR   Expression  { result = CallNode.new(val[0], '|'   , [val[2]]) }
  | Expression AND  Expression  { result = CallNode.new(val[0], '&'   , [val[2]]) }
  | Expression DBEQ Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression NTEQ Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression GT   Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression GTEQ Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression LT   Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression LTEQ Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '+'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '-'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '*'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
  | Expression '/'  Expression  { result = CallNode.new(val[0], val[1], [val[2]]) }
;

GetConstant:
  CONSTANT                      { result = GetConstantNode.new(val[0]) }
;
  
SetConstant:
  CONSTANT "=" Expression       { result = SetConstantNode.new(val[0], val[2]) }
;

GetGlobal:
  "@" IDENTIFIER                { result = GetGlobalNode.new(nil, val[1]) }
  | Expression "." IDENTIFIER   { result = GetGlobalNode.new(val[0], val[2]) }
;

GetLocal:
  IDENTIFIER                    { result = GetLocalNode.new(nil, val[0]) }
;
  
SetLocal:
  IDENTIFIER "=" Expression     { result = SetLocalNode.new(val[0], val[2]) }
;

SetGlobal:
  "@" IDENTIFIER "=" Expression     { result = SetGlobalNode.new(val[1], val[3]) }
;

Block:
    ":" Expressions END     { result = val[1] }
  | "{" Expressions "}"     { result = val[1] }
  | "{" "}"                 { result = Nodes.new([]) }
;

Def:
    DEF IDENTIFIER Block          { result = DefNode.new(val[1], [], val[2]) }
  | DEF IDENTIFIER
      "(" ParamList ")" Block     { result = DefNode.new(val[1], val[3], val[5]) }
;

Class:
    CLASS CONSTANT Block          { result = ClassNode.new(val[1], val[2]) }
;

---- header
  require "#{File.dirname(__FILE__)}/lexer.rb"
  require "#{File.dirname(__FILE__)}/nodes.rb"

---- inner
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end
  
  def next_token
    @tokens.shift
  end
  