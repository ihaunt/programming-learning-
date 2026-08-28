programa {
  funcao inicio() {
    
   const inteiro LUGARES_DISPONIVEIS = 40
   const real PRECO_INGRESSO = 30.00
   const real PRECO_INGRESSO_MEIA = 15.00
   const real PROMOCAO = 0.10 // %

   real valorTotal
   inteiro horario, ingresso, lugares, filmes
   escreva("\nSistema de ingressos \n") 
   escreva("\n1- Reservava de lugares ")
   escreva("\n2- Escolha de horario ")
   escreva("\n3- Escolha do filme ")
   escreva("\n4- Reservava de ingresso Meia/Inteira e Combo (meia + inteira) entrada \n")
 

   inteiro opcaofilmes
   leia(opcaofilmes)
   escolha(opcaofilmes){

    caso 1: {

     escreva("\nIndique numero de lugares: ")
     leia(lugares)
     se (LUGARES_DISPONIVEIS <= lugares){
      escreva("\nReserva feita com sucesso ", lugares)
     } senao{
      escreva("\nNão há disponibilidade solicitada ")
    }
    pare}

    caso 2:{
      escreva("\nEscolha o horário pretentido: ")
      escreva("\n 1- horario: 10h15pm ")
      escreva("\n 2- horario: 11h15pm ")
      escreva("\n 3- horario: 12h15pm ")
      leia(horario)
       se(horario == 1){
        escreva("\n10h15 Reservado com sucesso ")
       }senao se (horario ==2){
        escreva("\n11h15 Reservado com sucesso ")
       }senao se (horario==3){
        escreva("\n12h15 Reservado com sucesso ")
       }senao{
        escreva("\nEscolha uma opção válida ")
       }

    pare}
   

    caso 3:
      escreva("\nEscolha o horário pretentido: \n")
      escreva("\n 1- O Homem aranha ")
      escreva("\n 2- Os Increveis ")
      escreva("\n 3- The Batman ")
      leia(filmes)
       se(filmes == 1){
        escreva("\nO Homem aranha Reservado com sucesso \n")
       }senao se (filmes ==2){
        escreva("\nOs Increveis Reservado com sucesso \n")
       }senao se (filmes ==3){
        escreva("\nThe Batman Reservado com sucesso \n")
       }senao{
        escreva("\nEscolha uma opção válida \n")
      pare}

    caso 4:{
      escreva("\nSelecione tipo de entrada (meia ou inteira)\n")
      escreva("\n 1 - Entrada inteira ")
      escreva("\n 2 - Meia entrada")
      escreva("\n 3 - Combo: uma Meia e uma Inteira 10% desconto")
      leia(ingresso)
      se( ingresso ==1){
        ingresso = PRECO_INGRESSO
      }senao se ( ingresso ==2){
        ingresso = PRECO_INGRESSO_MEIA
      }senao se (ingresso ==3){
        ingresso = (PRECO_INGRESSO_MEIA + PRECO_INGRESSO) * PROMOCAO
      }senao {
        escreva("\nEscolha uma opção válida \n")
      }
      valorTotal = ingresso
      escreva("\nO valor total é de ", valorTotal)
    pare}
    caso contrario : escreva("\nEscolha uma opção válida \n")
   }








  }
}
