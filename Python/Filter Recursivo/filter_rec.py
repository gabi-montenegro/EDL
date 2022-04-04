def ehImpar(x):
    if x%2 != 0:
        return True
    else:
        return False


def ffilter(f,l):
    if not l:
        return []
    return [f(l[0])] + ffilter(f, l[1:])

def novaListaFiltrada(f,l):
    l_filter = ffilter(f, l)
    lista_filtrada = []
    for i in range(0, len(l)):
        if l_filter[i] == True:
            lista_filtrada.append(l[i])
    return lista_filtrada

#Main
lista = [1,2,3]
l_filter = novaListaFiltrada(ehImpar, lista)


print("---Lista Original---")
print(lista)
print("---Lista com Filter---")
print(l_filter)
