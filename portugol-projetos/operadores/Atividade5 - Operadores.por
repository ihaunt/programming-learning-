programa {
  funcao inicio() {

    real saldo
    real valorSaque
    real limiteEspecial

    real saldoComLimiteEspecial
    real saldoRestante
    real saqueComLimiteEspecial

    logico saqueDisponivel
    logico usouEspecial

    escreva("\nIndique saldo atual: ")
    leia(saldo)

    escreva("\nInforme limite do cheque especial: ")
    leia(limiteEspecial)

    escreva("\nDigite valor de saque: ")
    leia(valorSaque)
  
    saldoComLimiteEspecial = saldo + limiteEspecial

    saqueComLimiteEspecial = saldoComLimiteEspecial - valorSaque
    escreva("Valor dispoível com limite especial: ",saqueComLimiteEspecial)

    saqueDisponivel = saldo <= valorSaque ou valorSaque <= saldoComLimiteEspecial
    escreva("\nSaque pode ser realizado? ", saqueDisponivel)

    usouEspecial = valorSaque > saldo
    escreva("\nUsou limite especial? ", usouEspecial)

    saldoRestante = saldoComLimiteEspecial - valorSaque
    escreva("\nSaldo restante é: ",saldoRestante,"R$")

  }
}
