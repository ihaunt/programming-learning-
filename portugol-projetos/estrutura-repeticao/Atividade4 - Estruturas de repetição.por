programa {
  inclua biblioteca Util

   funcao inicio() {

    const real PRECO_FICHA = 5.00

    inteiro opcao
    inteiro perdeu = 0 , ganhou = 0, fichasCompradas = 0, soma = 0, numeroSort
    real fichasPagas, percentVic = 0, percentDer= 0 
    logico apostadaFicha = falso // inicia falso para evitar que de erro de NAN

   faca {
    escreva("\nSimulador de Cassino.\n")
    escreva("\n1- Compra de fichas.")
    escreva("\n2- Fazer apostas. Game: Advinhe o número sorteado! ")
    escreva("\n3- Consultar saldo.")
    escreva("\n4- Exibir estatísticas.")
    escreva("\n5- Encerrar a sessão.")
    escreva("\nOpção: ")
    leia(opcao)
    
    escolha(opcao){
        caso 1:
          escreva("\nIndique numero de fichas que deseja comprar: \n")
          leia(fichasCompradas)   

          se(fichasCompradas < 0 ){
            escreva("\nOperação não permitida. Insira valores válidos")
          }senao{
            limpa()
            fichasPagas =  fichasCompradas * PRECO_FICHA
            escreva("Preço para ",fichasCompradas, " fichas é de R$: ",fichasPagas,"\n") 
          }
        pare  

        caso 2:
          limpa()
          se(fichasCompradas <= 0 ){
            escreva("\nVocê precisa comprar fichas antes de acessar essa informação. \n")
          }senao{
            escreva("\nNúmero de fichas que possui: ",fichasCompradas)
            escreva("\nDeseja apostar uma ficha? (sim ou não):  \n")
            leia(apostadaFicha) 

              se (apostadaFicha == verdadeiro){

                fichasCompradas -= 1 // ta um pra um agora, né u.u 

                escreva("\nAposta feita, seu saldo atual é ",fichasCompradas) 

                limpa()
                escreva("\nADVINHE O NÚMERO SORTEADO ")
                escreva("\nEscolha um número entre 1 a 10: \n")
                leia(numeroSort)
                
                  inteiro numero = Util.sorteia(1,10)

                  se(numero != numeroSort){
                    perdeu += 1
                    escreva ("Seu número foi: ",numeroSort," e o sorteado foi: ",numero)
                    escreva("\nVocê perdeu.\n")
                  }senao{
                    ganhou += 1
                    fichasCompradas += 1 
                    escreva ("Seu número foi: ",numeroSort," e o sorteado foi: ",numero)
                    escreva("\nVocê venceu.\n")
                  }
              }senao{
                escreva("\nNúmero de fichas inválido. ")
              }
          }          
          
        pare

        caso 3: 
          limpa()
          se(fichasCompradas <= 0 ){
            escreva("\nVocê precisa comprar fichas antes de acessar essa informação. \n")
          }senao{
            escreva("\nSeu saldo é de: ",fichasCompradas," fichas\n")
          }         


        pare

        caso 4:
          limpa()
          se(apostadaFicha == falso ){ // retirei aqui ter fichas, não faz sentido ter fichas pra ver aqui. Apenas se fez aposta mesmo
            escreva("\nVocê precisa realizar apostas antes de acessar essa informação. \n")
          }senao{
            soma = ganhou + perdeu

            percentVic = (ganhou / soma) * 100 
            percentDer = (perdeu/soma) * 100
          
            escreva("\nPercentagem de vitórias é de: ", percentVic,"%")
            escreva("\nPercentagem de derrotas é de: ", percentDer,"%\n")
          }

        pare

        caso 5:
        limpa()
        escreva("\nSessão encerrada pelo usuário.\n")
        pare 
      }
    }enquanto(opcao != 5)
  }
}
