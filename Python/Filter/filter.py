def ehImpar(x):
    return x%2 != 0

def ffilter(f, l):
    outra_lista = []
    for i in range(0, len(l)):
        if f(l[i]) == True:
            outra_lista.append(l[i])

    return outra_lista


#Main
lista = [1,2,3]
l_filter = ffilter(ehImpar, lista)

print("---Lista Original---")
print(lista)
print("---Lista com Filter---")
print(l_filter)
