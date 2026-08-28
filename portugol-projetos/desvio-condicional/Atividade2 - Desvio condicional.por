programa {
  funcao inicio() {

    const real LIMITE_DIARIO = 1000
    real saldo = 140
    real operacao
   
    escreva("\nDigite a opção que deseja realizar: ")
    escreva("\n1 -  Saldo ")
    escreva("\n2 -  Saque ")
    escreva("\n3 -  Depósito ")
    escreva("\n4 -  Transferência ")
    escreva("\nOpção:  ")


    faca {

    inteiro opcao
    leia(opcao)
    escolha (opcao)
    {
      caso 1 : 
      escreva("\nSeu saldo é de R$: ", saldo, "\n")
      pare

      caso 2 :
        escreva("\nIndique valor do saque: ")
        leia(operacao)
        se (operacao < 0 ){
          escreva("\nOperação inválida, tente novamente. \n")

        }senao se  (operacao <= saldo e operacao <= LIMITE_DIARIO){
          saldo = saldo - operacao 

          escreva("\nOperação realizada com sucesso. Saldo atual é: R$ ",saldo)

        }senao {
          escreva("\nSaldo insuficiente ou limite diário exedido. ")
        }
      pare
      
      caso 3: 
        escreva("\nInsira valor que deseja depositar: ")
        leia(operacao)

        se(operacao < 0 ){
          escreva("\nOperação inválida, tente novamente. \n")

        }senao{
          saldo = saldo + operacao
        }
        escreva("\nOperação realizada com sucesso. Saldo atual é: R$ ",saldo)
      pare

      caso 4 :
        escreva("\nInsira valor que deseja transferir: ")
        leia(operacao)
        
        se(operacao < 0 ){
          escreva("\nOperação inválida, tente novamente. \n")
      
        }senao se  (operacao <= saldo e operacao <= LIMITE_DIARIO){
          saldo = saldo - operacao

          escreva("\nOperação realizada com sucesso. Saldo atual é: R$ ",saldo)

        }senao{
          escreva("\nSaldo insuficiente ou limite diário exedido. ")
        }
      pare

      caso contrario: escreva("\n Escolha uma opção válida. ")
    }}enquanto (operacao <= LIMITE_DIARIO)
  }
}
