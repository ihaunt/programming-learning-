programa {
  funcao inicio() {

    const inteiro MULTIPLICADOR = 100

    const inteiro ELIMINACAO = 49
    const inteiro CLASSIFICACAO = 70
    const inteiro ZONA_CLASSIFICACAO = 50

    inteiro vitorias 
    inteiro empates
    inteiro derrotas


    inteiro totalPontuacao
    inteiro percentVitorias
    inteiro percentDerrotas
    inteiro percentEmpates

    logico classificado
    logico eliminado
    logico zonaClassificado
    
    escreva("\n Insira numero de vitórias, empates e derrotas do time: \n")
    escreva("\n Numero de vitorias: ")
    leia(vitorias)
    
    escreva("\n Indique numero de empates: ")
    leia(empates)

    escreva("\n Número de derrotas: ")
    leia(derrotas)

    totalPontuacao = vitorias + empates + derrotas
    escreva("\nTotal de pontos:  ",totalPontuacao)

    percentVitorias = (vitorias / totalPontuacao) * MULTIPLICADOR
    percentDerrotas = (derrotas / totalPontuacao) * MULTIPLICADOR
    percentEmpates = (empates / totalPontuacao) * MULTIPLICADOR

    escreva("\n Aproveitamento em porcentagem de vitórias: ", percentVitorias,"%")
    escreva("\n Percentagem em Derrotas: ", percentDerrotas,"%")
    escreva("\n Aproveitamento em porcentagem de empates: ",percentEmpates,"%")

    classificado = totalPontuacao >= CLASSIFICACAO
    escreva("\n Está classificado? ", classificado)

    eliminado = totalPontuacao == ELIMINACAO
    escreva("\n Está eliminado? ", eliminado)

    zonaClassificado = totalPontuacao >= ZONA_CLASSIFICACAO
    escreva("\n Está em zona de classificação? ", zonaClassificado)

  }
}
