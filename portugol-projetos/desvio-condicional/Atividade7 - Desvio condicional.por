programa
{
	
	funcao inicio()
	{
		const real QUARTO_P = 150.0
		const real QUARTO_G = 300.0
		const real DESCONTO_DEZ_DIAS = 0.20 // %
    const inteiro DIAS = 10
    const inteiro SERVICO_ADICIONAL = 1.0 
		const inteiro QUARTOS_DISP = 20
    

		cadeia cadastroClinete
    caracter checkInOut,tipoQuarto
    real totalCobrar, totalAdiocio
    inteiro diasEstadia, numQuartos, numServicos , totalFinal


    escreva("\n1- Para cadastro / check-in e check-out")
    escreva("\n2- Para escolhar tipo de quarto P ou G")
    escreva("\n3- Para cobrar serviços adicionais ")
    escreva("\n4- Para adicional desconto 20% mais dez dias reservados (estadia)")
    escreva("\n5- Para cobrança sem desconto Plus10 e sem cobrança adicional \n")



		inteiro opcao
		leia(opcao)
		escolha(opcao){
		
		 caso 1 :{
		 escreva("\nIndique nome do cliente ")
     leia(cadastroClinete)
     escreva("Cliente faz check-In (S) / check-out (N) ")
     leia(checkInOut)
     se(checkInOut == "sim"){
        escreva("\nCheck-In feito com sucesso \n")
     }senao se (checkInOut == "N"){
        escreva("\nCheck-Out feito com sucesso \n")
     }senao {
        escreva("\nEscolha opção válida \n")
     }
		pare}
    caso 2: {
      escreva("\nIndique tipo do quarto P ou G \n")
      leia(tipoQuarto)
      escreva ("\nIndique o numero de dias de estadia: \n")
      leia(diasEstadia)
      escreva("\nIndique numero de quartos necessários: \n")
      leia(numQuartos)
      se(tipoQuarto == "P" e checkInOut == "S" e numQuartos <= QUARTOS_DISP){
        totalCobrar = QUARTO_P * diasEstadia
        escreva("\nValor inicial para numero de dias ",diasEstadia," é de:R$ ",totalCobrar)
      }senao se (tipoQuarto == "G" e checkInOut == "s"e numQuartos <= QUARTOS_DISP ){
        totalCobrar = QUARTO_G * diasEstadia
        escreva("\nValor inicial para numero de dias ",diasEstadia," é de:R$ ",totalCobrar)
      }senao {
        escreva("\nIndique informações válidas \n")
    }pare}
			
    caso 3: {

      escreva("\nIndique numero de dias de estadia: \n")
      leia(diasEstadia)
      escreva("\nIndique tipo de quarto P ou G \n")
      leia(tipoQuarto)
      escreva("\nIndique numero de serviços solicitados: \n")
      leia(numServicos)
      se(tipoQuarto == "G"){
      totalCobrar = QUARTO_G * diasEstadia 
      totalAdiocio = numServicos * SERVICO_ADICIONAL

      totalFinal = totalAdiocio + totalCobrar
      escreva("\nValor por serviço adicional é de ",totalFinal)

      }senao se (tipoQuarto == "P"){
      totalCobrar = QUARTO_P * diasEstadia 
      totalAdiocio = numServicos * SERVICO_ADICIONAL

      totalFinal = totalAdiocio + totalCobrar
      escreva("\nValor por serviço adicional é de ",totalFinal)
    }pare}

    caso 4: {
      escreva("\nIndique numero de dias de estadia: \n")
      leia(diasEstadia)
      escreva("\nIndique tipo de quarto P ou G \n")
      leia(tipoQuarto)
      escreva("\nIndique numero de serviços solicitados: \n")
      leia(numServicos)
      se(tipoQuarto == "P" e diasEstadia >= DIAS e checkInOut == "N" ){
        totalCobrar = QUARTO_P * diasEstadia
        totalAdiocio = numServicos * SERVICO_ADICIONAL
        totalFinal = (totalAdiocio + totalCobrar) * DESCONTO_DEZ_DIAS
        escreva("\nValor com desconto Plus10: ",totalFinal)
      }senao se (tipoQuarto == "G" e diasEstadia >= DIAS e checkInOut == "N" ){
        totalCobrar = QUARTO_G * diasEstadia
        totalAdiocio = numServicos * SERVICO_ADICIONAL
        totalFinal = (totalAdiocio + totalCobrar) * DESCONTO_DEZ_DIAS
        escreva("\nValor com desconto Plus10: ",totalFinal)
      }
    pare}
    caso 5: {
            escreva("\nIndique tipo do quarto P ou G \n")
      leia(tipoQuarto)
      escreva ("\nIndique o numero de dias de estadia: \n")
      leia(diasEstadia)
      escreva("\nIndique numero de quartos necessários: \n")
      leia(numQuartos)
      se(tipoQuarto == "P" e checkInOut == "S" e numQuartos <= QUARTOS_DISP){
        totalCobrar = QUARTO_P * diasEstadia
        escreva("\nValor estadia simples",totalCobrar)
      }senao se (tipoQuarto == "G" e checkInOut == "s"e numQuartos <= QUARTOS_DISP ){
        totalCobrar = QUARTO_G * diasEstadia
        escreva("\nValor estadia simples",totalCobrar)
      }senao {
        escreva("\nIndique informações válidas \n")
    }pare}
    }
	}
}

