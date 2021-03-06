import Data.List
import System.IO

bandas :: [[String]]
bandas = [ ["Gilberto Gil"],
           ["Victor", "Leo"],
           ["Gonzagao"],
           ["Claudinho", "Bochecha"] ]

type Musica = (String, Int, Int)
musicas :: [Musica]
musicas = [ ("Aquele Abraco",        0,  100),
            ("Esperando na Janela",  0,  150),
            ("Borboletas",           1,  120),
            ("Asa Branca",           2,  120),
            ("Assum Preto",          2,  140),
            ("Vem Morena",           2,  200),
            ("Nosso Sonho",          3,  150),
            ("Quero te Encontrar",   3,  100) ]

fNome :: Musica -> String 
fNome (nome,_,_) = nome

fDuracao :: Musica -> Int 
fDuracao (_,_,dur) = dur

idx :: Musica -> Int
--retorna indice do autor
idx (_,ind,_) = ind

--somente o nome das musicas
nomeMusicas = map fNome musicas

--extrair musicas com += 2 min
mscDoisMin = filter (\mus -> (fDuracao mus) >= 120) musicas

--musica de maior duracao
listaDuracao = map fDuracao musicas
maiorDuracao = foldr (\vl va -> if vl > va then vl else va) 0 listaDuracao

--nomes das musicas com >= 2 min
nomeDoisMin = map fNome mscDoisMin

--bandas de cada musica
autores :: [[String]]
autores = map (\mus -> bandas !! (idx mus)) musicas 


--exercicio 3.11.1 (intercalate)
fUnicaString :: [String] -> String
fUnicaString banda = if length banda == 1 then intercalate " " banda else intercalate "," banda

componentes = map fUnicaString bandas


--exercicio 3.11.2 (pretty-print)
exibe :: (String, String, String) -> String
exibe (nome, aut, duracao) = 
    "\n------\nnome: " ++ nome ++ "\nautor: " ++ aut ++ "\nduracao: " ++ duracao

bandasComAutores = map (\(nome, autor, duracao) -> (nome, componentes !! autor, show duracao)) musicas

main :: IO ()
main = putStrLn . unlines . map exibe $ bandasComAutores