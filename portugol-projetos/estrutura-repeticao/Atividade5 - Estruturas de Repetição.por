programa {
  inclua biblioteca Util
  funcao inicio() {

    const inteiro NEXT_LVL = 2
    const inteiro XP_ATAQUE = 1

    // por causa das modificações pedidias tive que mudar um monte de coisa

    inteiro  armadura =5, vida=5, nivel=0
    inteiro  ataques = 0, personagem, opcao
    inteiro forca = 5, magia = 5, vidaDoinimigo = 200 // vida total inimigo
    inteiro xp = 0
    logico aventura= falso, guerreiro = falso, mago = falso

    faca{
      escreva("\n JOGUINHO MARATO RPG \n")
      escreva("\n1- Criar personagem.")
      escreva("\n2- Explorar regiões e enfrentar inimigos")
      escreva("\n3- Visualizar os atributos do personagem.")
      escreva("\n4- Encerrar jogo")
      escreva("\nOpção: ")
      leia(opcao)
      escolha(opcao){

        caso 1:  
          limpa()
          escreva("\nCriação de classe.")
          escreva("\n1 - Guerreiro")
          escreva("\n2 - Mago")
          escreva("\nOpção: ")
          leia(personagem)

          se (personagem == 1){
            guerreiro = verdadeiro // se eu não coloco true, ele não passa pela verificação seguinte. 
            mago = falso
            escreva("Você escolheu o Guerreiro\n")
          } senao se (personagem == 2){
            mago = verdadeiro
            guerreiro = falso
            escreva("Você escolheu o Mago\n")
          }
          limpa()
        pare

        caso 2:
        limpa()
          escreva("\nDeseja iniciar uma aventura?(sim ou não) ")
          leia (aventura)
          se(aventura  e (mago ou guerreiro)){
            escreva("\nAventura iniciada! ")

            Util.aguarde(3000)

            escreva("\nVocê encontrou um inimigo. Precisa ataca-lo para sobreviver! ")

            escreva("\nQuantas vezes você pretende atacar? ")
            leia(ataques)
            
            para(inteiro i= 0; i < ataques; i++){
              xp  += XP_ATAQUE
              vidaDoinimigo -= forca
              vidaDoinimigo -= magia

              escreva("\nVocê atacou o inimigo e recebeu ", xp," de XP\n")

            }

            se(vidaDoinimigo <= 0){
              escreva("\nParabéns você derrotou o inimigo! \n")
            }senao{
              escreva("\nFaça mais ataques para derrotar seu inimigo! HP inimigo: ", vidaDoinimigo,"\n")
            }   
          
            enquanto(xp >= nivel * NEXT_LVL){
            // tive que colocar a operação toda dentro do laço ou ele ficava intifino. Não dava pra 
            // receber o calculo fora do laço sem ele quebrar
                nivel += 1
                forca += 5
                magia += 5
                armadura += 10
                vida += 10
            // e o for deixou de ser efetivo no cod, bugando tudo!
                escreva("\nVocê subiu de nível! Agora você está no nível ", nivel, "!\n")
            }
          }senao{
            escreva("\nVocê precisa selecionar seu personagem antes. \n")
          }
        pare

        caso 3:
        limpa()
          se(guerreiro){
            escreva("\nSeus atributos são: ")
            escreva("\n Nivel: ",nivel)
            escreva("\n Força: ",forca)
            escreva("\n XP: ", xp)
            escreva("\n Armadura: ",armadura)
            escreva("\n Vida: ", vida)

          }senao se(mago){
            escreva("\nSeus atributos são: ")
            escreva("\n Nivel: ",nivel)
            escreva("\n Força: ",magia)
            escreva("\n XP: ", xp)
            escreva("\n Armadura: ",armadura)
            escreva("\n Vida: ", vida,"\n")

          }senao{
            escreva("\nVocê precisa selecionar seu personagem antes. \n")
          }
        pare

        caso 4:
        limpa()
        escreva("\nJogo finalizado! ")
        pare
      }
    }enquanto(opcao != 4)    
  }
}
