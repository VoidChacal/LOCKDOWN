soma = 0
qtd = 0
while(True):
   entrada = input("Digite um valor numerico real: ")
   if (entrada == "F" or entrada == "f"):
       break
   if (entrada.isalpha()):
    print("Entrada invalida")
    break
   n = float(entrada)
   if (n==0):
    print("Voce digitou 0")
   soma += n
   qtd += 1
print ("Quantidade de valores digitados: ", qtd)
print ("soma dos valores digitados: ", soma)