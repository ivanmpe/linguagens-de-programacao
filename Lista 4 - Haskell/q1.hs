data Tree = Leaf | Node Tree Tree

qtdeFolhas :: Tree -> Int
qtdeFolhas (Leaf) = 1 
qtdeFolhas (Node esq dir) = qtdeFolhas esq + qtdeFolhas dir 


t :: Tree 
t = Node (Leaf) ( Node (Leaf) (Leaf)) 


balanced :: Tree -> Bool
balanced (Node esq dir) = 
      if (qtdeFolhas esq - qtdeFolhas dir) <= 1 
      then True
      else False