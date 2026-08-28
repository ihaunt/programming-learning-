programa {
  funcao inicio() {
    const real PLANO_BASIC = 10.00
    const real PLANO_MIDDLE = 15.00
    const real PLANO_BLACK = 25.00

    cadeia nome 
    cadeia  nomePlano
    inteiro plano
    real preco

    escreva("\nSistema de Academia\n")
    escreva("\n1- Para iniciar ")


    inteiro opcao
    leia(opcao)
    escolha(opcao){
      caso 1:{
       escreva("\nDigite nome do aluno: ")
       leia(nome)
       escreva("\nSelecione o nome do plano do aluno: ")
       escreva("\n 1 para basic")
       escreva("\n 2 para middle ")
       escreva("\n 3 para black ")
       leia(plano)
       se(plano == 1){
         nomePlano =  "Plano Basic"
         preco = PLANO_BASIC
         escreva("\nAluno cadastrado com sucesso ",nome, " ",nomePlano," ",preco)

       }senao se (plano == 2){ 
         nomePlano =  "Plano Middle"
         preco = PLANO_MIDDLE
         escreva("\nAluno cadastrado com sucesso ",nome, " ",nomePlano," ",preco)

       }senao se (plano == 3){
         nomePlano =  "Plano Black"
         preco = PLANO_BLACK
         escreva("\nAluno cadastrado com sucesso ",nome, " ",nomePlano," ",preco)
       }senao{
        escreva("\nEscolha opcao valida\n")
       }pare}
    caso contrario : escreva("\nEscolha uma opção válida \n")}
  }
}
