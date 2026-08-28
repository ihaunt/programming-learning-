programa {
  inclua biblioteca Matematica
  funcao inicio() {
    
    inteiro tamanho = 0, soma = 0, procurado =0
    inteiro cont_par = 0, cont_impar = 0
    real media = 0
    logico encontrado =  falso

    escreva("\nNúmeros Sorteados\n")

    escreva("\nIndique o numero de valores que será atribuido ao sorterio: ")
    leia(tamanho) // definir tamanho do tamanho

    // usa a var para ser o "numero de posições"
    inteiro numero[tamanho]
    inteiro par[tamanho]
    inteiro impar[tamanho]

    // insere os valores dentro do tamanho
    para(inteiro i=0; i<tamanho;i++){
      escreva("\nIndique o numero que fará parte do sorterio: ")
      leia(numero[i])
    }
    limpa()

    // exibe os numeros do tamanho
    para(inteiro i=0; i<tamanho; i++){
      escreva(i+1,"º numero inserido: ",numero[i],"\n")
    }

    inteiro maior = numero[0]
    inteiro menor = numero[0]
    para(inteiro i=0; i<tamanho; i++){
      se(numero[i]> maior){
        maior = numero[i]
      }
      se(numero[i]< menor){
        menor = numero[i]
      }
    }
    escreva("\nMaior número: ", maior)
    escreva("\nMenor número: ", menor)

    // media 
    para(inteiro i=0; i<tamanho; i++){
      soma += numero[i]
    }
    media = soma/tamanho
    escreva("\nMédia dos valores: ",Matematica.arredondar(media,1))

    // separa pares e ímpares
    para(inteiro i=0; i<tamanho; i++){
      se (numero[i]%2 == 0){
        par[cont_par] = numero[i]
        cont_par ++ 
      }senao{
        impar[cont_impar] = numero[i]
        cont_impar ++ 
      }
    }
    escreva("\nValores pares encontrados: ", cont_par)
    escreva("\nValores impares encontrados: ", cont_impar)

    escreva("\nIndique numero a ser procurado: ")
    leia(procurado)

    // procura o numero
    para(inteiro i =0; i<tamanho; i++){
      se(numero[i] == procurado){
        encontrado = verdadeiro
        pare
      }
    }

    se(encontrado){
      escreva("\nNúmero encontrado!")
    }senao{
      escreva("\nNúmero não encontrado.")
    }
  }
}
