programa {
  funcao inicio() {
    

    real media
    cadeia frequencia
    real rendaFamiliar

    const real TETO_RENDA = 2.000
    const real MINIMA_MEDIA = 8.5
    const inteiro MINIMA_FREQUENCIA = 90
    const real MAX_MEDIA = 9.5
    

    logico bolsaIntegral
    logico mediaComFrequencia
    logico bolsaParcial

    escreva("\n Sistema de Bolsa de Estudos: Preencha as informaçoes: \n")
    escreva("\n Digite a média do aluno: ")
    leia(media)

    escreva("\n Insira percentagem de frequência do aluno (Ex: 5): ")
    leia(frequencia)

    escreva("\n Digite renda familiar: ")
    leia(rendaFamiliar)

   
    mediaComFrequencia = media >= MINIMA_MEDIA e frequencia >= MINIMA_FREQUENCIA ou
    media >= MAX_MEDIA 
    escreva( "\n Aluno aprovado para bolsa: ", mediaComFrequencia)

    bolsaIntegral = rendaFamiliar <= TETO_RENDA
    escreva("\n Aluno elegível para bolsa integral: ", bolsaIntegral)

    bolsaParcial = rendaFamiliar >= TETO_RENDA
    escreva("\n Aluno elegível para bolsa parcial: ", bolsaParcial)


  }
}
