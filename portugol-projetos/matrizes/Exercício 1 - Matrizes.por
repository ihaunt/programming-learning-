programa {
  funcao inicio() {
    // Crie uma matriz 3x3 de inteiros. . Peça ao usuário para preencher todas as posições, e depois exiba a matriz formatada em linhas e colunas (como uma tabela).
    inteiro matriz [3][3]

    para(inteiro i=0; i<3; i ++){
      para(inteiro j=0; j<3; j++){
      escreva("\nDigite o valor da posição [", i, "][", j, "]: ")
      leia(matriz[i][j])
      }
    }

    para(inteiro i=0; i<3; i++){ // linha 
      para(inteiro j=0; j<3; j++){ // col 
        escreva(matriz[i][j],"\t")
      }
        escreva("\n")
    }
  }
}
