data Alunos = Aluno String Float Float deriving (Show)
--newtype Aluno = Aluno [[String, Float, Float]]





--lista :: [Aluno] -> [Aluno]
alu1 :: Alunos
alu1 = Aluno "gabi" 2.5 5.4

alu2 :: Alunos 
alu2 = Aluno "joao" 8.8 7.4

--lista :: [[String, Double, Double]]
lista = [alu1, alu2]

lmap = map (\nome nota1 nota2 -> nome) lista  --nao funciona


--https://mmhaskell.com/liftoff/data-types
--https://en.wikibooks.org/wiki/Haskell/Type_declarations