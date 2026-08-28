programa {
  funcao inicio() {

    inteiro contNotas = 0 
    real notaAluno, totalMedia, notasRecebidas = 0
    escreva("\nIndique numero de notas que serão insiridas: ")
    leia(contNotas)


    para(inteiro i = 1; i<= contNotas; i++){
      escreva("\nIndique nota do aluno: ")
      leia(notaAluno)

      notasRecebidas += notaAluno
    }

    totalMedia = notasRecebidas /contNotas
    escreva("\nMédia do aluno é: ", totalMedia)
  }
}