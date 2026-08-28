programa {
  funcao inicio() {
    
    const real PRECO_INGRESSO = 1.50
    const real ALTURA_MIN = 1.20
    real pagar
    inteiro opcao,qntIngressos =0, brinquedo, todos
    logico roda = falso, montanha = falso, carro = falso
    logico pagamento = falso


    faca{
        escreva("\n1-Comprar ingresso. ")
        escreva("\n2-Escolher brinquedos e entrar nas fila ")
        escreva("\n3-Consultar altura mínima. ")
        escreva("\n4-Acumular pontos ou prêmios. ")
        escreva("\n5-Consultar saldo de créditos.")
        escreva("\n6-Encerrar a visita. ")
        escreva("\nOpção: ")
        leia(opcao)
        escolha(opcao){
          
        caso 1:
        escreva("Indique numero de ingressos que deseja comprar: ")
        leia(qntIngressos)
        se(qntIngressos <= 0){
          escreva("\nIndique valor válido. ")
        }senao{
          pagar =  PRECO_INGRESSO * qntIngressos
          escreva("\nValor a pagar: ", pagar, " por ",qntIngressos)

          escreva("\nEfetuar pagamento? sim ou não: ")
          leia(pagamento)

          se(pagamento){
            escreva("\nVALOR PAGO! Divirta-se! ")
          }
        }
        pare

        caso 2:
          se(qntIngressos <0 e pagamento){
            escreva("\nPor favor selecione  opção 1 para compra de ingressos. ")
          }senao {
            escreva("\nEscolha seu brinquedo: ")
            escreva("\n1 - Roda gigante ")
            escreva("\n2 - Carrinho bate-bate ")
            escreva("\n3 - Montanha russa ")
            leia(brinquedo)

            se(brinquedo == 1 ){
              escreva("\nRoda gigante escolhida com sucesso! ")
              qntIngressos -= 1 
              roda = verdadeiro
            }senao se (brinquedo == 2){
              escreva("\nCarrinho bate-bate escolhida com sucesso! ")
              qntIngressos -= 1 
              carro = verdadeiro
            }senao se (brinquedo == 3){
              escreva("\n Montanha russa escolhida com sucesso! ")
              qntIngressos -= 1
              montanha = verdadeiro
            }senao{
              escreva("\nDigite valor válido")
            }

            escreva("\nAguarde sua vez para usar o brinquedo. ")
            Util.aguarde(5000) 
            escreva("\nDirija-se ao brinquedo escolhido. Obrigado.")
          }
        pare

        caso 3:
          escreva("\nAltura minima para uso dos brinquedos:",ALTURA_MIN, " metros de altura" )
        pare

        caso 4:
          se(roda e carro e montanha){
            todos +=1
            escreva("\nVocê ganhou 1 ponto! Total: ", todos)
            roda = falso // reseta lá em cima pra não ficar sempre como verdadeiro
            carro = falso 
            montanha = falso
          }senao{
            escreva("\nVocê ainda não utilizou todos os brinquedos necessários. ")
          }

          se(todos == 5){
            escreva("\nVocê recebeu um par de ingressos!\n")
            todos = 0 // reseta a var todos (a cada 5x usados os 3 brinquedos ganha um par )
          }senao{
            escreva("\nPontos adquiridos: ",todos)
          }
        pare

        caso 5:
         escreva("\nSaldo de ingressos atual é de: ",qntIngressos)
        pare

        caso 6:
          escreva("\nAtendimento finalizado pelo usuário.")
        pare
      }
    }enquanto(opcao != 6)

  






  }
}
