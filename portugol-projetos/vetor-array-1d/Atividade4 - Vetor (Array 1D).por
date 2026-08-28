programa {
  funcao inicio() {
 
    const inteiro BAIXO = 3
    const inteiro ZERADO = 0

    logico acabouR = falso, vaiAcabarR = falso, acabouS = falso, vaiAcabarS = falso, achou = falso
    inteiro somaR = 0, somaS = 0, procurado = 0
    cadeia item


    escreva("\nEstoque de Produtos")

    inteiro estRoupa[1] // é proposital, sei que para executar 1 ou no caso adicionar somente 1 valor poderia deixar com 0
    inteiro estSapato[1]

    para(inteiro i=0; i<1; i++){
      escreva("\nIndique numero de roupas que irá inserir: ")
      leia(estRoupa[i])
    }

    para(inteiro i=0;i<1; i++){
      escreva("\nIndique numero de sapatos que irá inserir: ")
      leia(estSapato[i])
    }

    para(inteiro i=0; i<1;i++){
      escreva("\nInformações armazenadas Roupas: ", estRoupa[i])
      escreva("\nInformações armazenadas Sapatos: ", estSapato[i])
    }
  
    para(inteiro i=0; i<1; i++){

      somaR +=estRoupa[i]

      se(estRoupa[i] <=ZERADO){
        acabouR = verdadeiro
      }senao se(estRoupa[i] <BAIXO){
        vaiAcabarR = verdadeiro
      }
    }
    se(acabouR){
      escreva("\nSem estoque para o produto.")
    }senao se(vaiAcabarR){
      escreva("\nProdutos com estoque abaixo do necessário. Total de: ",somaR, " unidades")
    }

    para(inteiro j=0; j<1; j++){
      somaS  += estSapato[j]

      se(estSapato[j]<= ZERADO){
        acabouS = verdadeiro
      }senao se(estSapato[j] < BAIXO){
        vaiAcabarS = verdadeiro
      }
    }

    se(acabouS){
      escreva("\nSem estoque para o produto.")
    }senao se(vaiAcabarS){
      escreva("\nProdutos com estoque abaixo do necessário. Total de: ",somaS, " unidades")
    }

    // encontrar maior e menor estoque
    inteiro totalR = 0, totalS = 0

    para(inteiro i =0; i<1; i++){
      para(inteiro j=0; j<1; j++){
        totalR +=estRoupa[i]
        totalS +=estSapato[j]
      }
    }
    se(totalR > totalS){
      escreva("\nMaior estoque é de roupas, com: ",totalR, " unidades")
    }senao{
      escreva("\nMaior estoque é de sapatos, com: ",totalS," unidades")
    }

    se(totalR < totalS){
      escreva("\nMenor estoque é de roupas, com: ",totalR, " unidades")
    }senao{
      escreva("\nMenor estoque é de sapatos, com: ",totalS," unidades")
    }

    se(totalR == totalS){
      escreva("\nProdutos possuem o mesmo estoque.")
      escreva("\nRoupas: ", totalR," unidades" )
      escreva("\nSapatos: ", totalS," unidades" )
    }

    //totalzao
     inteiro totalzao = 0 
    para(inteiro i=0; i<1; i++){
      para(inteiro j=0; j<1; j++){
        totalzao = estRoupa[i] + estSapato[i]
      }
    }
    escreva("\nTotal em estoque de Roupas e Sapatos: ",totalzao)

    // procura
    escreva("\nIndique quantidade procurada: ")
    leia(procurado)
    para(inteiro i=0; i<1; i++){
      para(inteiro j=0; j<1; j++){

        se(estRoupa[i] == procurado){
          achou = verdadeiro
          item = "Roupas"
        }senao se(estSapato[j] == procurado){
          achou = verdadeiro
          item = "Sapatos"
        }

      }
    }

    se(achou){
      escreva("\nA quantidade foi encontrada no estoque de ", item)
    }senao{
      escreva("\nQuantidade não encontrada")
    }

  }
}
