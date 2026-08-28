programa {
  funcao inicio() {

    real x, y
    real resultado

    escreva("\nCalculadora. Selecione tipo de calculo a ser realizado ")
    escreva("\n1- Adição ")
    escreva("\n2- Subtração ")
    escreva("\n3- Divisão ")
    escreva("\n4- Multiplicação ")
    escreva("\n5- Potenciação ")
    escreva("\n6- X% de um valor" )
    escreva("\n7- média de dois valores ")
    escreva("\nOpção: ")

    inteiro opcao
    leia(opcao)
    escolha (opcao){


    caso 1:
      escreva("\nIndique primeiro valor: ")
      leia(x)
      escreva("\nIndique segundo valor: ")
      leia(y)

      resultado = x+y
      escreva("\nA adição dos valores é: ",resultado)
    pare

    caso 2:
      escreva("\nIndique primeiro valor: ")
      leia(x)
      escreva("\nIndique segundo valor: ")
      leia(y)

      resultado = x-y
      escreva("\nA subtração dos valores é: ",resultado)
    pare

    caso 3:
      escreva("\nIndique primeiro valor: ")
      leia(x)
      escreva("\nIndique segundo valor: ")
      leia(y)

      se(y == 0){
        escreva("Insira valor maior que zero. ")

      }senao {
       resultado = x/y
       escreva("\nA divisão dos valores é : ",resultado)
      }
    pare  

    caso 4:
      escreva("\nIndique primeiro valor: ")
      leia(x)
      escreva("\nIndique segundo valor: ")
      leia(y)

      resultado = x*y
      escreva("\nA multiplicação dos valores é : ",resultado)
    pare

    caso 5:
      escreva("\nIndique base: ")
      leia(x)
      escreva("\nIndique expoente: ")
      leia(y)

      inteiro base = x
      resultado = 1
      para (inteiro i=0; i<y; i++){
        resultado = resultado * base
      }
      escreva("\nA potenciação de ", base , " elevado a ",y, " é: ",resultado)
    pare
    

    caso 6:
      escreva("\nExemplo 23% de 80 \n")
      escreva("\nIndique valor (Ex 80): ")
      leia(x)
      escreva("\nIndique o percentual (ex 23%): ")
      leia(y)

      resultado = (x/100) * y
      escreva("\nO valor percentual de: ", y," % de ",x," é: ",resultado )
    pare

    caso 7:
      escreva("\nIndique primeiro valor: ")
      leia(x)
      escreva("\nIndique segundo valor: ")
      leia(y)

      resultado = (x + y)/2
      escreva("\nA media dos valores é: ",resultado)
    pare

     caso contrario: escreva("\n Escolha uma opção válida. ")
    }
  }
}
