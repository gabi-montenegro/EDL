{- Mago: nome, altura, idade, magia do mago 
   Guerreiro: nome, altura, idade, ataque e defesa do guerreiro
   Sacerdote: nome, altura, idade, reza do Sacerdote
-}
data Personagem = Mago String Float Int Int | Guerreiro String Float Int Int Int | Sacerdote String Float Int Bool deriving (Show)

p1 :: Personagem 
p1 = Mago "joao" 1.45 12 68

p2 :: Personagem 
p2 = Guerreiro "gabi" 1.71 23 45 32
