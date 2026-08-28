programa {
  funcao inicio() {


    inteiro num
    inteiro calc

    escreva("\nTABUADA")
    escreva("\nDigite numero: ")
    leia(num)
    

    para(inteiro i = 0; i <= 10; i++){

       calc = num * i

      escreva("\n", num," x ", i," = ",calc)
    }
    escreva("\nA tabuada foi concluída.")
  }
}
