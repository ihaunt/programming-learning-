programa {
 inclua biblioteca Util
  funcao inicio() {

    const inteiro BRUXO = 50, APRENDIZ = 0, ARQUIMAGO = 500 // anos de experiencia
    const inteiro BOLA_FOGO = 10, RAIO_ARCANO = 25

    cadeia  cargo
    inteiro tempo, ataque ,opcao, numAtaques, danoFeito,  vidaMago1 = 100, vidaMago2 = 100



    faca{

      escreva("\nGUILDA DE MAGOS\n")
      escreva("\n1 - Definir Ranking ")
      escreva("\n2 - Visualizar ataques")
      escreva("\n3 - Batalha magos")
      escreva("\n4 - Encerrar ")
      escreva("\nOpção: ")
      leia(opcao)

      escolha(opcao){
        caso 1: 
        escreva("\nIndique o periodo de tempo do membro (em anos): ")
        leia(tempo)

        se(tempo >= 0 ){
          escreva("\nIndique tempo válido ")
        }senao se(tempo >= BRUXO){
          cargo =  "Bruxo"
          escreva("\nMembro tornou-se um Bruxo. ")

        }senao se(tempo >= ARQUIMAGO){
          cargo = "Arquimago"
          escreva("\nMembro tornou-se um Arquimago de equipe. ")

        }senao se(tempo >= APRENDIZ){
          cargo = "Aprendiz"
          escreva("\nMembro tornou-se um Aprendiz. ")
        }
        pare

        caso 2:
          escreva("\nAtaque 1 - Bola de fogo. Recebe 10 de danoFeito")
          escreva("\nAtaque 2 - Raio arcano. Recebe 25 de danoFeito")
        pare

        caso 3:
          escreva("\nBATALHA")
          escreva("\nTurno Mago 1! Prepare-se para começar! ")
          Util.aguarde(3000)

          escreva("\nEsolha um ataque: ")
          escreva("\nAtaque 1 - Bola de fogo")
          escreva("\nAtaque 2 - Raio arcano ")
          escreva("\nOpção: ")
          leia(ataque)

          se(ataque == 1){
            escreva("\nQuantas vezes irá atacar? ")
            leia(numAtaques)

            para(inteiro i =0; i<= numAtaques; i++){
              danoFeito -= BOLA_FOGO
            }

            se(vidaMago2 <=0 ){
              escreva("\nVocê matou o mago! Que agressividade! \n")

            }senao{
              escreva("\nVocê fez ", numAtaques, " ataques")
              vidaMago2 -= danoFeito
              escreva("\nMago 1 lança Bola de Fogo! -", danoFeito, " de vida no Mago 2\n")
              escreva("\nVida mago 2: ",vidaMago2 )
            }

          }senao se (ataque == 2){
            escreva("\nQuantas vezes irá atacar? ")
            leia(numAtaques)

            para(inteiro i = 0 ; i <=numAtaques; i++){
              danoFeito -= RAIO_ARCANO
            }


            se(vidaMago2 <=0 ){
             escreva("\nVocê matou o mago! Que agressividade! \n")

            }senao{
              escreva("\nVocê fez ", numAtaques, " ataques")
              vidaMago2 -= danoFeito
              escreva("\nMago 1 lança Bola de Fogo! -", danoFeito, " de vida no Mago 2\n")
              escreva("\nVida mago 2: ",vidaMago2 )
            }

          }senao{
            escreva("\nIndique ataque válido")
          }

          escreva("\nTURNO MAGO 2! Prepare-se para começar!")

          Util.aguarde(3000)

          escreva("\nEsolha um ataque: ")
          escreva("\nAtaque 1 - Bola de fogo")
          escreva("\nAtaque 2 - Raio arcano ")
          escreva("\nOpção: ")
          leia(ataque)

          se(ataque == 1){
          escreva("\nQuantas vezes irá atacar? ")
          leia(numAtaques)

            para(inteiro i =0; i<= numAtaques; i++){
              danoFeito -= BOLA_FOGO
            }
            se(vidaMago1 <= 0 ){

              escreva("\nVocê matou o mago! Que agressividade! \n")

            }senao{
              escreva("\nVocê fez ", numAtaques, " ataques")
              vidaMago1 -= danoFeito
              escreva("\nMago 1 lança Bola de Fogo! -", danoFeito, " de vida no Mago 2\n")
              escreva("\nVida mago 2: ",vidaMago2 )
            }


          }senao se (ataque == 2){
            escreva("\nQuantas vezes irá atacar? ")
            leia(numAtaques)

            para(inteiro i = 0 ; i <=numAtaques; i++){
              danoFeito -= RAIO_ARCANO
            }

            se(vidaMago2 <= 0 ){
              escreva("\nVocê matou o mago! Que agressividade! \n")

            }senao{
              escreva("\nVocê fez ", numAtaques, " ataques")
              vidaMago2 -= danoFeito
              escreva("\nMago 1 lança Bola de Fogo! -", danoFeito, " de vida no Mago 2\n")
              escreva("\nVida mago 2: ",vidaMago2 )
            }

          }senao{
            escreva("\nIndique ataque válido")
          }
            
          se(vidaMago1 >= vidaMago2){
            escreva("\nMago 1 é o vitorioso! ")
          }senao{
          escreva("\nMago 2 é o vitorioso ")
          } 
        pare

        caso 4:
         escreva("\nPrograma encerrado pelo usuário")
        pare
      }
    }enquanto (opcao !=4)
  }
}
