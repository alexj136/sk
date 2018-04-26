{
module Lexer where
}

%wrapper "basic"

tokens :-
    $white+ ;
    "S"     { id }
    "K"     { id }
    "("     { id }
    ")"     { id }
    [a-z]+  { id }
