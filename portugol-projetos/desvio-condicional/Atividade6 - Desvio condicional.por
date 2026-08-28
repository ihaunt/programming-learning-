programa {
  funcao inicio() {
    
    const inteiro LIMITE_DEVOLUCAO = 10 //DIAS
    const real MULTA = 1.0 // DIA DE ATRASO // 

    cadeia nomeLivro
    cadeia nomeLeitor
    inteiro emprestimoAtivo 


    inteiro diasEmprestimo 
    real valorDivida
  

    escreva("\nSistema de livros: Escolha a opção desejada \n")
    escreva("\n1- Cadastro de livro (nome) ")
    escreva("\n2- Cadastro de leitor (nome) ")
    escreva("\n3- Calculo de multa aplicavel por dias de atraso ")


    inteiro opcao
    leia(opcao)
    escolha(opcao){
      caso 1: 
       escreva("\nInsira nome do livro \n")
       leia(nomeLivro)
      pare

      caso 2:{

       escreva("\nInsira nome do Leitor \n")
       leia(nomeLeitor)
       escreva("\nLeitor fez emprestimos de livro? Responda '1 para sim' ou '2 para não'")
       leia(emprestimoAtivo)
       se (emprestimoAtivo == 1){
         escreva("\nEmprestimo realizado com sucesso\n ") 
       }senao se (emprestimoAtivo == 2){
         escreva("\nAinda não fez emprestimo de livros \n") 
       }pare}


      caso 3: {
       escreva("\nIndique a periodo em dias que o emprestimo estava ativo. (exemplo: 10 \n") 
       leia(diasEmprestimo)
       se(diasEmprestimo >= LIMITE_DEVOLUCAO){
        valorDivida = MULTA * diasEmprestimo
        escreva("\nMulta por atraso é de ", valorDivida)
       }senao se (diasEmprestimo <= LIMITE_DEVOLUCAO){
        escreva("\nNão há multa a ser cobrada ")
       }senao("\nEscolha numero de dias válido\n ")
      pare}

      caso contrario : escreva("\nEscolha uma opção válida ")
    }
  }
}
