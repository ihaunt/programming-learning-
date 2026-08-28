programa {
  inclua biblioteca Tipos
  funcao inicio() {

    const inteiro LIMITE_MAX = 1000 // população max
    const inteiro LIMITE_CICLOS = 200 // dias
    const inteiro LIMITE_TEMPERATURA = 37

    inteiro ciclos, temperatura, opcao, bacteriasIni, bac
    real  taxa  
  
    faca{
      escreva("\nLABORATÓRIO\n") // A ideia é simular o crescimento de uma população de bactérias ao longo do tempo num laboratório.
      escreva("\n1- Iniciar simulação  ")
      escreva("\n2- Verificar Indicativos permitidos")
      escreva("\n3- Ver ultimo resultado realizado ")
      escreva("\n4- Sair")
      escreva("\nOpção: ")
      leia(opcao)

      escolha(opcao){
        caso 1: 
          limpa()
          escreva("\nQuantas bactérias existem inicialmente?: ")
          leia(bacteriasIni)

          escreva("\nQuantos ciclos deseja simular?: ")
          leia(ciclos) // um dia cada ciclo

          escreva("\nQual a porcentagem da taxa de crescimento? (ex 50): ")
          leia(taxa)

          escreva("\nQual a temperatura em °C? (ex 20): ")
          leia(temperatura)

          se(bacteriasIni < 0 ou ciclos < 0 ou taxa <0){
            escreva("\nPor favor insira valores válidos")
          }

          bac = bacteriasIni 
          para(inteiro i = 0; i < ciclos; i ++){

            bac = bac * (1 + taxa/100) // quando tentei mudar essa var pra "nao sobrescrever", ela parou de acumular e fazia uma unica vez a multiplicação de bactérias
            // me deu dor de cabeça e pesquisei no Gpt kkkk - ele concordou que era a melhor maneira pra esse caso
          }                           


          se(bacteriasIni >= LIMITE_MAX ou ciclos >= LIMITE_CICLOS ou temperatura > LIMITE_TEMPERATURA){
            escreva("\nStatus: Crescimento não saudável para o experimento ")
            escreva("\nLimite inicial saudável por experimento: ",LIMITE_MAX, ", mas o indicado foi: ",bacteriasIni)
            escreva("\nLimite de cliclos permitido: ", LIMITE_CICLOS, ", mas o indicado foi: ",ciclos)
            escreva("\nTemperatura indicada: ", LIMITE_TEMPERATURA, ", mas o indicado foi: ",temperatura,"°C")

          }senao{
            escreva("\n RESULTADO DO EXPERIMENTO\n")
            escreva("\nStatus: Crescimento saudável.Limite de bactérias normal! ")
            escreva("\nPopulação inicial: ", bacteriasIni)
            escreva("\nTaxa de crescimento: ",taxa)
            escreva("\nCiclos realizados: ",ciclos)
            escreva("\nTemperatura: ",temperatura,"°C")
            escreva("\nPopulação final: ",bac)
          }

        pare

        caso 2:
          limpa()
          escreva("\nLimite saudável por experimento: ",LIMITE_MAX)
          escreva("\nLimite de cliclos permitido: ", LIMITE_CICLOS)
          escreva("\nTemperatura indicada: ", LIMITE_TEMPERATURA)
        pare

        caso 3:
          limpa()
          escreva("\n RESULTADO DO EXPERIMENTO\n")
          escreva("\nStatus: Crescimento saudável.Limite de bactérias normal! ")
          escreva("\nPopulação inicial: ", bacteriasIni)
          escreva("\nTaxa de crescimento: ",taxa)
          escreva("\nCiclos realizados: ",ciclos)
          escreva("\nTemperatura: ",temperatura,"°C")
          escreva("\nPopulação final: ",bac)
          pare

        caso 4:
          limpa()
          escreva("\nPrograma finalizado pelo usuário.")
        pare
      
      }
    }enquanto(opcao != 4)
  }
}
