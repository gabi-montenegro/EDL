def dobro(x):
    return 2*x 

#retorna lista existente alterada
def fmap(f, l):
    for i in range(0, len(l)):
        l[i] = f(l[i])


#Main
lista=[1,2,3]
fmap(dobro, lista)

print("---Lista original alterada---")
print(lista)