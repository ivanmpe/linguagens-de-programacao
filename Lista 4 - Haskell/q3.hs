data Form = Atom Char | And Form Form | Or Form Form | Imply Form Form | Not Form
type Val = [(Char,Bool)]



busca :: Eq c => c -> [(c,v)] -> v
busca c t = head [v | (c',v) <- t, c == c']



val :: Val -> Form -> Bool
val i (Atom x)   = busca x i
val i (Not f)    = not (val i f)
val i (And f g) = val i f && val i g
val i (Or f g) = val i f || val i g
val i (Imply f g) = val i f <= val i g



y :: Val
y = [('p', True), ('q', False)]

x :: Form
x = ( (Atom 'p') 'Imply' (Not (Atom 'q') ) ) 