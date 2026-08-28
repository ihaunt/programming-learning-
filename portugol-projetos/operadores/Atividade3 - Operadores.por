programa {
  funcao inicio() {

    const inteiro MULTIPLICADOR = 100
    const real ZERADO = 0.00
    const inteiro  PASSOU_OITENTA = 80 

   real salario
   real gastosFixos
   real gastosVariaveis

   real percentagemGasto
   real gastouMais

   logico estaNegativo
   logico maisOitenta
   logico gastouTudo
   

    escreva("\n Calculadora Financeira. Insira as informaçoes solicitadas:\n ")
    escreva("\n Insira o seu salário: ")
    leia(salario)

    escreva("\n Indique seus Gastos Fixos: ")
    leia(gastosFixos)

    escreva("\n Indique seus gastos variáveis: ")
    leia(gastosVariaveis)
   
    escreva("\n Você gastou exatamente todo o seu salário: ")

    percentagemGasto = (gastosFixos + gastosVariaveis)/salario * MULTIPLICADOR
    escreva("\n Você usou ",percentagemGasto,"%")

    maisOitenta = percentagemGasto >= PASSOU_OITENTA
    escreva("\n Você gastou mais que 80% do seu salário: ", maisOitenta)


    gastouMais = gastosFixos + gastosVariaveis

    gastouTudo =  gastouMais == ZERADO
    escreva("\n Você gastou exatamente todo o seu salário: ", gastouTudo)


    estaNegativo = gastouMais <= ZERADO
    escreva("\n Você gastou além do seu salário e esta em saldo negativo em: ", estaNegativo)




  }
}
