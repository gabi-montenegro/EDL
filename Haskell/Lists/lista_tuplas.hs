-- (mes, nome)
lt = [(1, "joao"), (6, "maria"), (3, "jose"), (7, "thiago"), (6, "gabriella")]


meses :: Int -> String

meses (a) = 
            case a of
                1 -> "Janeiro"
                2 -> "Fevereiro"
                3 -> "Marco"
                4 -> "Abril"
                5 -> "Maio"
                6 -> "Junho"
                7 -> "Julho"
                8 -> "Agosto"
                9 -> "Setembro"
                10 -> "Outubro"
                11 -> "Novembro"
                12 -> "Dezembro"


ltMap = map (\(a,b) -> meses(a)) lt --Transforma meses de inteiro para string

ltCancerianos = filter (\(a,b) -> a > 5 && a < 8) lt --Filtra tuplas de cancerianos
nomeCancerianos = map (\(a,b) -> b) ltCancerianos -- Lista com o nome dos cancerianos

ltMapMeses = map(\(a,b)-> a) lt --Lista somente com os meses
ltMaisNovo = foldl max 0 ltMapMeses --Captura o mês da pessoa mais nova
ltNomeMaisNovo = filter (\(a,b) -> a == ltMaisNovo) lt --obtem lista de tupla da pessoa mais nova



