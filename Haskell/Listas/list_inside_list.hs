nomes :: [[String]]
alturas :: [[Float]]
pesos :: [[Float]]


nomes = [["maria"], ["joao"], ["gabi"]]
alturas = [[1.65], [1.43], [1.70]]
pesos = [[56], [42], [61]]


listaAlturaDup = map (\[a] -> a^2) alturas --Transforma a lista de listas de altura em uma lista de altura ao quadrado

listaPeso = map (\[p] -> p) pesos --Transforma a lista de lista de pesos em uma lista simples de pesos

--Funcao zip' concatena cada elemento de duas listas em uma lista de tuplas.
zip' :: [a] -> [b] -> [(a, b)]
zip' xs     []     = []
zip' []     ys     = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

listaAltPeso = zip' listaAlturaDup listaPeso --[(altura1, peso1),(altura2, peso2),...,(alturaN, pesoN)]

imc = map(\(a,p) -> a/p) listaAltPeso --Calculo do IMC



listaAltura = map(\[a] -> a) alturas --Transforma lista de lista em uma simples lista 

maiorAltura = foldl max 0 listaAltura -- Seleciona a maior altura

listaNome = map (\[n] -> n) nomes -- Transforma lista de lista em uma simples lista 
listaNomeAlt = zip' listaNome listaAltura -- Concatena a lista de nomes e lista de alturas em uma tupla

nomeMaiorAlt = filter (\(nome, alt) -> alt == maiorAltura) listaNomeAlt -- Filtra nome e altura de quem é o mais alto






