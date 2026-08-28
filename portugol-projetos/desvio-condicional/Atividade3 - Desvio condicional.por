programa {
  funcao inicio() {
      const inteiro VAGAS_TOTAIS = 10
      const real VALOR_HORA_CARRO = 2.5
      const real VALOR_HORA_MOTO = 1.5

      cadeia  placa, tipo
      real  totalCobrar, horasUsadas

      inteiro carrosEstacionados, vagasDisponiveis

      escreva("\nSelecione opção desejada: ")
      escreva("\n1- Cadadastro ")
      escreva("\n2- Vagas disponiveis ") 
      escreva("\n3- Calculo permanencia carro ") 
      escreva("\n4- Calculo permanencia moto ") 
      escreva("\n5- Emissão ticket carro ")
      escreva("\n6- Emissão ticket moto ")
      escreva("\nOpção: ")


      inteiro opcao
      leia(opcao)
      escolha (opcao){

      caso 1:
      escreva("\nInsira as informaçoes do veiculo: ")
      escreva("\nInsira placa: ")
      leia(placa)
      escreva("\nInsira o tipo ")
      leia(tipo)

      vagasDisponiveis = VAGAS_TOTAIS - 1

      escreva("\nVeiculo cadastrado VEICULO ", tipo, " PLACA: ", placa) 
      escreva("\nVagas disponiveis atuliazada: ",vagasDisponiveis)
      pare   

      caso 2:
      escreva("\nIndique numero de carros estacionados: ")
      leia(carrosEstacionados)
      se(carrosEstacionados <= VAGAS_TOTAIS){
      vagasDisponiveis = VAGAS_TOTAIS - carrosEstacionados

      escreva("\nVagas disponiveis: ",vagasDisponiveis)
      }

      pare 

      caso 3:
        escreva("\nIndique o periodo usado (ex: 1 corresponde a 1h) ")
        leia(horasUsadas)

        totalCobrar = horasUsadas * VALOR_HORA_CARRO

        escreva("\nValor total para veiculo tipo carro:R$ ", totalCobrar ) 

      pare 

      caso 4:
        escreva("\nIndique o periodo usado (ex: 1 corresponde a 1h) ")
        leia(horasUsadas)

        totalCobrar = horasUsadas * VALOR_HORA_MOTO
        escreva("\nValor total para veiculo tipo carro:R$ ", totalCobrar) 
      pare 


      caso 5:
        escreva("\nHoras usadas:(ex: 1 corresponde a 1h) ")
        leia(horasUsadas)

        totalCobrar = horasUsadas * VALOR_HORA_CARRO

        escreva("\nTicket: Carro")
        escreva("\nHoras usadas: ",horasUsadas)
        escreva("\nValor total cobrado:R$ ",totalCobrar)
        escreva("\nObrigado e volte sempre \n")
      pare    

      caso 6:
        escreva("\nHoras usadas:(ex: 1 corresponde a 1h) ")
        leia(horasUsadas)

        totalCobrar = horasUsadas * VALOR_HORA_MOTO

        escreva("\nTicket: \n Carro")
        escreva("\nHoras usadas: ",horasUsadas)
        escreva("\nValor total cobrado:R$ ",totalCobrar)
        escreva("\nObrigado e volte sempre \n")
        pare

      caso contrario: escreva("\n Escolha uma opção válida. ")
    }
  }
}
