
pessoas :: [[Float]]
pessoas = [[1.65, 56], [1.43, 42], [1.70, 61]]



alturaDup = map (\[a,b] -> a^2) pessoas --Transforma a lista de listas de altura em uma lista de altura ao quadrado

alturaDupRound = map (\a -> round a) alturaDup--arredonda as alturas duplicadas

pesos = map (\[a,b] -> b) pessoas --mapeando somente os pesos


listaAltPeso = zip alturaDup pesos --[(altura1, peso1),(altura2, peso2),...,(alturaN, pesoN)] : lista de tuplas

imc = map(\(a,p) -> a/p) listaAltPeso --Calculo do IMC


listaAltura = map(\[a,b] -> a) pessoas --Transforma lista de lista em uma simples lista 
maiorAltura = foldl max 0 listaAltura -- Seleciona a maior altura


idadeMaiorAlt = filter (\[alt, idade] -> alt == maiorAltura) listaNomeAlt -- Filtra altura e idade da maior altura da lista






