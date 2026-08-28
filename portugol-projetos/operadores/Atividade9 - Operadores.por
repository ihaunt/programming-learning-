programa {
  funcao inicio() {

    const inteiro DIVISOR = 3
    const inteiro MEDIA_PROV = 650
    const inteiro MEDIA_REDACAO = 700
    const inteiro MEDIA_MIN = 500

    inteiro matematica , portugues, redacao

    inteiro media
    logico aprovado
    logico todas

    escreva("\nInsira notas solicitadas:  \n")
    escreva("\nMateria: Matemaática: ")
    leia(matematica)

    escreva("\nMateria: Português: ")
    leia(portugues)
  
    escreva("\nMateria: Redação: ")
    leia(redacao)


    media = (matematica + portugues + redacao) / DIVISOR
    escreva("\nMédia é: ", media)

    todas = matematica >= MEDIA_MIN e portugues >= MEDIA_MIN e redacao >= MEDIA_MIN

    aprovado = media >= MEDIA_PROV e redacao >= MEDIA_REDACAO e todas == verdadeiro
    escreva("\nAluno aprovado: ", aprovado)


  }
}
