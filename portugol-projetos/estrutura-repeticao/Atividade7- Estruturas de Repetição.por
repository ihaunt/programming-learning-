programa {
  funcao inicio() {
    
    const inteiro BAGAGEM_G = 23

    logico checkIn, reservado
    inteiro assento , opcao, bagagem
    inteiro portaoEmbarque, horarioVoo
    

    faca{
      escreva("\nSistema de Aeroporto \n")
      escreva("\n1- Consultar voos.")
      escreva("\n2- Realizar check-in.")
      escreva("\n3- Escolher assento.")
      escreva("\n4- Registrar bagagem.")
      escreva("\n5- Consultar portão de embarque.")
      escreva("\n6- Exibir horário do voo.")
      escreva("\n7- Encerrar atendimento.")
       leia(opcao)
       escolha(opcao){


        caso 1:
         escreva("\nVoos para o dia de hoje: ")
         escreva("\nDestino: Brasilia ")
         escreva("\nHorário: previsto para ás 17h30\n")

         escreva("\nDestino: Belo Horizonte  ")
         escreva("\nHorário: previsto para ás 16h30 \n")

         escreva("\nDestino: Sergipe")
         escreva("\nHorário: previsto para ás 17h30 \n")
        pare
        caso 2:
          escreva("\nConfirma realização de Check-In? (sim ou não) ")
          leia(checkIn)
          escreva("\nCheck-In realizado com sucesso: ")
        pare

        caso 3: 
          se(checkIn == verdadeiro){
            escreva("\nEscolha seu assento: ")
            leia(assento)
            reservado = verdadeiro
            escreva("\nO assento ", assento," foi reservado. ")
          }
        pare

        caso 4:
          se(checkIn == verdadeiro e reservado == verdadeiro){
              escreva("\nIndique peso de sua bagagem: ")
              leia(bagagem)

            se(bagagem < 0){
              escreva("\nPor favor indique valor válido. ")
            }senao{
              se(bagagem >= BAGAGEM_G){
                escreva("\nPor favor dirija-se ao balcão para despachar sua mala. ")
              }senao{
                escreva("\nPor favor dirija-se ao portão de embarque de seu voo. ")
              }
            }          
          }senao{
            escreva("\nVocê precisa realizar o check-in e/ou escolher seu assento antes de realizar esta ação. ")
          }
        pare 

        caso 5:
          se(checkIn == verdadeiro e reservado == verdadeiro){

            escreva("\nEscolha seu destino: ")
            escreva("\n1 - Brasilia ")
            escreva("\n2 - Belo Horizonte ")
            escreva("\n3- Sergipe ")
            escreva("\nOpção: ")
            leia(portaoEmbarque)

            se (portaoEmbarque < 0 ){
              escreva("\nPor favor indique valor válido. ")
            }senao {

              se(portaoEmbarque == 1){
               escreva("\nDirija-se ao portão 1 ")     
              }senao se (portaoEmbarque == 2){
                escreva("\nDirija-se ao portão 15 ")   
              }senao se (portaoEmbarque == 3){
                escreva("\nDirija-se ao portão 17 ")   
              }senao{
                escreva("\nPor favor indique valor válido. ")
              }
            }           
          }senao{
            escreva("\nVocê precisa realizar o check-in e/ou escolher seu assento antes de realizar esta ação. ")
          }
        pare

        caso 6:
          escreva("\nEscolha seu destino: ")
          escreva("\n1 - Brasilia ")
          escreva("\n2 - Belo Horizonte ")
          escreva("\n3- Sergipe ")
          escreva("\nOpção: ")
          leia(horarioVoo)  

          se(horarioVoo < 0 ){
            escreva("\nPor favor indique valor válido. ")
          }senao{
            se(horarioVoo == 1){
              escreva("\nVoo com destino a Brasilia previsto para ás 17h30 ")
            }senao se(horarioVoo == 2){
              escreva("\nVoo com destino a Belo Horizonte previsto para ás 16h30 ")
            }senao se(horarioVoo==3 ){
              escreva("\nVoo com destino a Sergipe previsto para ás 17h30 ")
            }senao{
              escreva("\nPor favor indique valor válido. ")
            }
          }
        pare 

        caso 7:
          escreva("\nAtendimento encerrado pelo usuário. ")
        pare
      }
    }enquanto (opcao !=7)






  }
}
