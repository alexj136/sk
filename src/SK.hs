module SK where

data Tm = App Tm Tm | S | K | Arb String deriving (Eq, Ord)

instance Show Tm where
    show (App x y) = "(" ++ show x ++ " " ++ show y ++ ")"
    show S         = "S"
    show K         = "K"
    show (Arb s)   = s  

eval :: Tm -> Tm
eval (App (App (App S x) y) z) = eval (App (App x z) (App y z))
eval (App (App K x) _)         = eval x
eval x                         = x
