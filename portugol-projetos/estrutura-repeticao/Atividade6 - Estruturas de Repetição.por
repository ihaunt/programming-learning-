programa {
  inclua biblioteca Util

  funcao inicio() {
    const inteiro MAX_TENTATIVAS = 3
    logico dica
    caracter resposta
    inteiro opcao
    inteiro  tentativas = 0,facil = 0 , medio= 0,  dificil = 0 , pontos = 0 
  


    faca{
      escreva("\nCONHECIMENTOS GERAIS\n")
      escreva("\n1- Fácil")
      escreva("\n2- Médio")
      escreva("\n3- Difícil")
      escreva("\n4- Pontuação")
      escreva("\n5- Encerrar")
      escreva("\nOpcão: ")
      leia(opcao)

      escolha(opcao){

   
        caso 1:
          escreva("\nNível: 1 - Pergunta 1: ")
          escreva("\nQual é a capital do Brasil?\n")
          escreva("\nA) Rio de Janeiro ")
          escreva("\nB) Brasília ")
          escreva("\nC) São Paulo\n")
          escreva("\nPrepare-se para responder em alguns segundos...\n")

          Util.aguarde(3000)

          escreva("\nVocê quer uma dica? (sim/nao): ")
          leia(dica)

          se(dica == verdadeiro){
          escreva("\nDica: Foi inaugurada em 1960 e fica no Centro-Oeste. \n")
          escreva("\nResposta: ")
          leia(resposta)
          }senao{
            escreva("Qual a resposta correta?: ")
            leia(resposta)
          }

          se(resposta == "B" ou resposta == "b"){
            escreva("\nResposta correta! ")
            pontos += 1

          }senao{
            tentativas = 1
            para(inteiro i = tentativas ; i < MAX_TENTATIVAS; i++){

              tentativas +=1

              escreva("\nIncorreta, tente mais uma vez: ")
              leia(resposta)

              se(resposta == "B" ou resposta == "b"){
                escreva("\nResposta correta! ")
                pontos += 1
              
              }senao se(tentativas >= MAX_TENTATIVAS){
                escreva("\nSuas tentativas acabaram ")
              }
            }

          }
          escreva("\nResposta correta é letra:")
          escreva("\nB) Brasília \n")
      

          escreva("\nNível: 1 - Pergunta 2: ")
          escreva("\nPergunta: Quantos planetas existem no Sistema Solar?")
          escreva("\nA) 7")
          escreva("\nB) 9")
          escreva("\nC) 8")


          Util.aguarde(3000)

          escreva("\nVocê quer uma dica? (sim/nao): ")
          leia(dica)

          se(dica == verdadeiro){
          escreva("\nDica: Plutão não é mais considerado um planeta. \n")
          escreva("\nResposta: ")
          leia(resposta)
          }senao{
          escreva("Qual a resposta correta?: ")
          leia(resposta)
          }

          se(resposta == "C" ou resposta == "c"){
          escreva("\nResposta correta! ")
          pontos += 1

          }senao{
            tentativas = 1
            para(inteiro i = tentativas ; i < MAX_TENTATIVAS; i++){

              tentativas +=1

              escreva("\nIncorreta, tente mais uma vez: ")
              leia(resposta)

              se(resposta == "C" ou resposta == "c"){
                escreva("\nResposta correta! ")
                pontos += 1
              
              }senao se(tentativas >= MAX_TENTATIVAS){
                escreva("\nSuas tentativas acabaram ")
              }
            }

          }
          escreva("\nResposta correta é letra:")
          escreva("\nC) 8 planetas \n")

          facil = pontos
        pare

        caso 2:
          escreva("\nNível: 2 - Pergunta 1: ")
          escreva("\nQual é o maior país do mundo em área territorial? ")
          escreva("\nA) Canadá")
          escreva("\nB) Rússia")
          escreva("\nC) China")
          escreva("\nPrepare-se para responder em alguns segundos...\n")

          Util.aguarde(3000)

          escreva("\nVocê quer uma dica? (sim/nao): ")
          leia(dica)

          se(dica == verdadeiro){
            escreva("\nDica: Seu território ocupa partes da Europa e da Ásia. \n")
            escreva("\nResposta: ")
            leia(resposta)
          }senao{
            escreva("Qual a resposta correta?: ")
            leia(resposta)
          }

          se(resposta == "B" ou resposta == "b"){
          escreva("\nResposta correta! ")
          pontos += 1

          }senao{
            tentativas = 1
            para(inteiro i = tentativas ; i < MAX_TENTATIVAS; i++){

              tentativas +=1

              escreva("\nIncorreta, tente mais uma vez: ")
              leia(resposta)

              se(resposta == "B" ou resposta == "b"){
                escreva("\nResposta correta! ")
                pontos += 1
              
              }senao se(tentativas >= MAX_TENTATIVAS){
                escreva("\nSuas tentativas acabaram ")
              }
            }

          }
          escreva("\nResposta correta é letra:")
          escreva("\nB) Rússia \n")


          escreva("\nNível: 2 - Pergunta 2: ")
          escreva("\nQual cientista formulou a teoria da gravitação universal? ")
          escreva("\nA) Albert Einstein")
          escreva("\nB) Galileu Galilei")
          escreva("\nC) Isaac Newton")
          escreva("\nPrepare-se para responder em alguns segundos...\n")

          Util.aguarde(3000)

          escreva("\nVocê quer uma dica? (sim/nao): ")
          leia(dica)

          se(dica == verdadeiro){
            escreva("\nDica: Uma maçã é frequentemente associada à sua descoberta.\n")
            escreva("\nResposta: ")
          leia(resposta)
          }senao{
            escreva("Qual a resposta correta?: ")
            leia(resposta)
          }

          se(resposta == "C" ou resposta == "c"){
            escreva("\nResposta correta! ")
            pontos += 1

          }senao{
            tentativas = 1
            para(inteiro i = tentativas ; i < MAX_TENTATIVAS; i++){

              tentativas +=1

              escreva("\nIncorreta, tente mais uma vez: ")
              leia(resposta)

              se(resposta == "C" ou resposta == "c"){
                escreva("\nResposta correta! ")
                pontos += 1
              
              }senao se(tentativas >= MAX_TENTATIVAS){
                escreva("\nSuas tentativas acabaram ")
              }
            }

          }

          escreva("\nResposta correta é letra:")
          escreva("\nC) Isaac Newton \n")
          medio = pontos
        pare 

        caso 3:

          escreva("\nNível: 3 - Pergunta 1: ")
          escreva("\nQual é o metal líquido à temperatura ambiente? ")
          escreva("\nA) Prata")
          escreva("\nB) Mercúrio")
          escreva("\nC) Alumínio")
          escreva("\nPrepare-se para responder em alguns segundos...\n")

          Util.aguarde(3000)

          escreva("\nVocê quer uma dica? (sim/nao): ")
          leia(dica)

        se(dica == verdadeiro){
            escreva("\nDica: Antigamente era usado em termômetros. \n")
            escreva("\nResposta: ")
            leia(resposta)
          }senao{
            escreva("Qual a resposta correta?: ")
            leia(resposta)
          }

          se(resposta == "B" ou resposta == "b"){
            escreva("\nResposta correta! ")
            pontos += 1

          }senao{
            tentativas =1 
            para(inteiro i = tentativas ; i < MAX_TENTATIVAS; i++){

              tentativas +=1

              escreva("\nIncorreta, tente mais uma vez: ")
              leia(resposta)

              se(resposta == "B" ou resposta == "b"){
                escreva("\nResposta correta! ")
                pontos += 1
              
              }senao se(tentativas >= MAX_TENTATIVAS){
                escreva("\nSuas tentativas acabaram ")
              }
            }

          }
          escreva("\nResposta correta é letra:")
          escreva("\nB) Mercúrio \n")



          escreva("\nNível: 3 - Pergunta 2: ")
          escreva("\nQual é o país com o maior número de fusos horários oficiais? ")
          escreva("\nA) Rússia")
          escreva("\nB) Estados Unidos")
          escreva("\nC) França")
          escreva("\nPrepare-se para responder em alguns segundos...\n")

          Util.aguarde(3000)

          escreva("\nVocê quer uma dica? (sim/nao): ")
          leia(dica)

          se(dica == verdadeiro){
            escreva("\nDica: Isso acontece por causa de seus territórios espalhados pelo mundo. \n")
            escreva("\nResposta: ")
          leia(resposta)
          }senao{
            escreva("Qual a resposta correta?: ")
            leia(resposta)
          }

          se(resposta == "C" ou resposta == "c"){
            escreva("\nResposta correta! ")
            pontos += 1

          }senao{
            tentativas =1 
            para(inteiro i = tentativas ; i < MAX_TENTATIVAS; i++){

              tentativas +=1

              escreva("\nIncorreta, tente mais uma vez: ")
              leia(resposta)

              se(resposta == "C" ou resposta == "c"){
                escreva("\nResposta correta! ")
                pontos += 1
              
              }senao se(tentativas >= MAX_TENTATIVAS){
                escreva("\nSuas tentativas acabaram ")
              }
            }
          }
          escreva("\nResposta correta é letra:")
          escreva("\nC) França (considerando todos os seus territórios ultramarinos)\n")
          dificil = pontos
          pare
        caso 4:

          pontos = facil + medio + dificil 
          escreva("\nVocê acumulou: ",pontos,"  pontos")
          escreva("\nTentativas incorretas: ",tentativas)

        pare

        caso 5:
          escreva("\nPrograma finalizado pelo usuario ")
        pare

      }

      
    }enquanto(opcao !=5)

  }
}
