{
module Parser where

import SK
}

%name parse M
%tokentype { String }
%error { (\s -> error ("Parse error on " ++ (show s))) }
%token
    S       { "S" }
    K       { "K" }
    LB      { "(" }
    RB      { ")" }
    X       { str }
%%

M :: { Tm }
M : M N { App $1 $2 } | N { $1 }

N :: { Tm }
N : LB M RB { $2 } | S { S } | K { K } | X { Arb $1 }
{
}
