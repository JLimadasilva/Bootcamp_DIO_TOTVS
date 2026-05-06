def calcular_total(numeros):
    return sum(numeros)

def retorna_antecessor_e_sucessor(numeros):
    antecessor = numeros - 1
    sucessor = numeros + 1 

    return antecessor, sucessor

print(calcular_total([10, 20,34]))
print(retorna_antecessor_e_sucessor(10))
    