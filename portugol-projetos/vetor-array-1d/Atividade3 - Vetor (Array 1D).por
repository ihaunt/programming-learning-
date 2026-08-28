programa {
  inclua biblioteca Matematica
  funcao inicio() {

    const inteiro ACIMA_PONT = 7
    inteiro tamanho1, tamanho2, maiores1, menores1, maiores2, menores2 // nao iniciadas por pois serão transf em vetores

    inteiro  procurado =0
    logico encontrado1 = falso, encontrado2 = falso, achou1 = falso, achou2 = falso
    real  soma = 0, media1 = 0, media2 = 0, soma2 = 0, soma1 = 0




    escreva("\nRanking de Jogadores\n")

    escreva("\nIndique o numero de valores que será atribuido ao Primeiro jogador: ",tamanho1)
    leia(tamanho1) // numero de posiçoes para o vetor que será criado

    escreva("\nIndique o numero de valores que será atribuido ao Segundo jogador: ",tamanho2)
    leia(tamanho2)

    real jogador1[tamanho1]
    real jogador2[tamanho2]

    //JOGADOR 1
    para(inteiro i=0; i< tamanho1; i++){
      escreva("\nIndique ",i+1,"º Pontuação do JOGADOR 1: ")
      leia(jogador1[i]) 
    }
    // JOGADOR 2

    para(inteiro i=0; i <tamanho2;i++){
      escreva("\nIndique ",i+1,"º Pontuação do JOGADOR 2: ")
      leia(jogador2[i]) 
    }


    // inserido JOGADOR 1
    para(inteiro i=0;i<tamanho1; i++){
      escreva(i+1,"º pontuação inserida do JOGADOR 1: ",jogador1[i],"\n")

    }

    // inserido JOGADOR 2
    para(inteiro i=0; i<tamanho2;i++){
      escreva(i+1,"º pontuação inserida do JOGADOR 2: ",jogador2[i],"\n")
    }


    // maior e menor JOGADOR 1 e 2
    // obs:  eu entendi que maior e menor É O MAIOR E MENOR DENTRE OS PONTOS e não MAIOR pontuação total.
    maiores1 = jogador1[0]
    menores1 = jogador1[0]

    para(inteiro i = 0; i < tamanho1; i++){
      se(jogador1[i] > maiores1){
        maiores1 = jogador1[i]
      }
      se(jogador1[i] < menores1){
        menores1 = jogador1[i]
      }
    }

    maiores2 = jogador2[0]
    menores2 = jogador2[0]
    para(inteiro j = 0; j < tamanho2; j++){
      se(jogador2[j] > maiores2){
        maiores2 = jogador2[j]
      }
      se(jogador2[j] < menores2){
        menores2 = jogador2[j]
      }
    }
    // difere a maior dentre
    se(maiores1 == maiores2){ // maiores
      escreva("\nAmbos os jogadores tiveram o maior ponto igual: ")
      escreva("Jogador 1: ",maiores1)
      escreva("Jogador 2: ",maiores2)

    }
    se(menores1 == menores2){// menores
      escreva("\nAmbos os jogadores tiveram o menor ponto igual: ")
      escreva("Jogador 1 com: ",menores1)
      escreva("Jogador 2 com: ",menores2)
    }

    se(maiores1 > maiores2){
      escreva("\nA MAIOR pontuação é do Jogador 1 com: ",maiores1, " pontos.")
    }senao{
      escreva("\nA MAIOR pontuação é do Jogador 2 com: ",maiores2, " pontos.")
    }
    se(menores1 < menores2){
      escreva("\nA menor pontuação é do Jogador 1 com: ",menores1, " pontos.")
    }senao{
      escreva("\nA menor pontuação é do Jogador 2 com: ",menores2, " pontos.")
    }

    //  média JOGADOR 1
    para(inteiro i=0; i<tamanho1; i++){
      soma += jogador1[i]
    }
    media1 = soma/tamanho1
    escreva("\nMédia dos valores indicados JOGADOR 1: ", Matematica.arredondar(media1,1))

    //  média JOGADOR 2

    para(inteiro i=0; i<tamanho2 ;i++){
      soma1 +=jogador2[i]
    }
    media2 = soma1/tamanho2
    escreva("\nMédia dos valores indicados JOGADOR 2: ", Matematica.arredondar(media2,1))

    // procura quem fez pontos acima de x
    para(inteiro i=0; i <tamanho1;i++){

      se(jogador1[i] >= ACIMA_PONT){
        encontrado1 = verdadeiro
        pare
      } 
    }
    se(encontrado1){
      escreva("\nO Jogador 1 obteve pontuação acima de ",ACIMA_PONT)
    }

    para(inteiro j =0; j<tamanho2; j++){
      se( jogador2[j] >= ACIMA_PONT){
        encontrado2 = verdadeiro
        pare
      }
    }

    se(encontrado2){
      escreva("\nO Jogador 2 obteve pontuação acima de ",ACIMA_PONT)
    }
    se(encontrado1 == falso e encontrado2 == falso){
      escreva("\nNenhum jogador obteve pontuação acima de ",ACIMA_PONT)
    }

    // procura pontuação JOGADOR 1 e 2
    escreva("\nIndique pontuação que deseja consultar: ")
    leia(procurado)

    para(inteiro i=0; i<tamanho1; i++){
      se(jogador1[i] == procurado){
        achou1 = verdadeiro
        pare
      }
    }

    para(inteiro j=0; j<tamanho2; j++){
      se(jogador2[j] == procurado){
        achou2 = verdadeiro
        pare
      }
    }
    
    se(achou1){
      escreva("\nO Jogador 1 obteve a pontuação de: ",procurado)
    }

    se(achou2){
      escreva("\nO Jogador 2 obteve a pontuação de: ",procurado)
    }

    se(achou1 == falso e achou2 == falso){
      escreva("\nNenhum jogador obteve pontuação acima de ",ACIMA_PONT)
    }

    // rank + pontos mesmo. 
    escreva("\nRanking FINAL: \n")

    para(inteiro i=0; i<tamanho1; i++){
     soma +=jogador1[i]
    }

    para(inteiro j=0; j<tamanho2; j++){ 
     soma2 +=jogador2[j]
    }

    se(soma > soma2){
      escreva("\nJogador 1 venceu. Pontuação final de: ",soma)
    }senao{
      escreva("\nJogador 2 venceu. Pontuação final de: ", soma2)
    }
  }
}
