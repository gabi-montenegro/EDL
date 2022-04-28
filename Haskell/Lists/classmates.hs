--exercicio 3.7.1
data Alunos = Aluno String Float Float deriving (Show)


--exercicio 3.7.2 e 3.8.1
alu1 :: Alunos
alu1 = Aluno "gabi" 2.5 5.4

alu2 :: Alunos 
alu2 = Aluno "joao" 8.8 7.4

alu3 :: Alunos 
alu3 = Aluno "fabio" 3.4 7.8

alu4 :: Alunos 
alu4 = Aluno "lucas" 4.7 6.8

alu5 :: Alunos 
alu5 = Aluno "daniela" 6.5 8.9

alu6 :: Alunos 
alu6 = Aluno "pedro" 0.5 3.1

alu7 :: Alunos 
alu7 = Aluno "maria" 7.7 9.3

alu8 :: Alunos 
alu8 = Aluno "bruna" 8.3 6.2

alu9 :: Alunos 
alu9 = Aluno "igor" 4.4 5.0

alu10 :: Alunos 
alu10 = Aluno "vitoria" 6.9 7.1


type ListaDeAlunos = [[Alunos]]
lista :: ListaDeAlunos
lista = [[alu1], [alu2], [alu3], [alu4], [alu5], [alu6], [alu7], [alu8], [alu9], [alu10]]

--exercicio 3.7.2
alunos = map (\[Aluno nome nota1 nota2] -> nome) lista
medias = map (\[Aluno nome nota1 nota2] -> (nota1+nota2)/2) lista

--exercicio 3.8.1
nomesComMedias = zip alunos medias

aprovados = filter (\(nome, media) -> media >= 7.0) nomesComMedias
alunosAprovados = map (\(nome, media) -> nome) aprovados
