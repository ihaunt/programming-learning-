programa {
  inclua biblioteca Matematica
  funcao inicio() {

    real soma = 0, media = 0
    real notas [5] 

    
    escreva("\nAnálise de Notas\n")
    // recebe as notas 

    para(inteiro i=0; i<5; i++){
      escreva("\nIndique a ", i+1 , "º nota para a média: ")
      leia(notas[i])
    }

    limpa()

    // mostra notas
    para(inteiro i = 0; i<5; i++){
      escreva("\nNota inserida: ",i+1,"º nota: ",notas[i])
    }
    // soma e média num só
    para(inteiro i=0; i<5; i++){
      soma += notas[i]
    }
      media = soma/5
    escreva("\n Total das notas inseridas: ",Matematica.arredondar(soma,1))
    escreva("\n Média: ",Matematica.arredondar(media,1))

    // cria novos arrays para os valores separados: maior e menor
    real maiores[5] // novo vetor
    real menores[5] // novo vetor
    real cont_maiores = 0 // var indice para usar dentro do novo laço
    real cont_menores = 0 // var indice para usar dentro do novo laço
    para(inteiro i = 0; i<5; i++){
      se(notas[i] >= 7){
        maiores[cont_maiores] = notas[i] // insere numero no array
        cont_maiores++ // para p/ a prox posição disp no array
      }senao{
        menores[cont_menores]= notas[i] // insere numero no array
        cont_menores++ // para p/ a prox posição disp no array
      }
    }
    escreva("\n Quantidade de valores inseridos MAIORES OU IGUAIS que 7: ",cont_maiores) // var indice com os valores
    escreva("\n Quantidade de valores inseridos MENORES que 7: ",cont_menores)

  }
}
