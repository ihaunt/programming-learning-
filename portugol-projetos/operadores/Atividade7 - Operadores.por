programa {
  funcao inicio() {

    inteiro ladoA
    inteiro ladoB
    inteiro ladoC

    logico triangulo

    logico equilatero
    logico isosceles
    logico escaleno

    escreva("\nDigite os 3 ladoos do triangulo: ")
    escreva("\n Lado A: ")
    leia(ladoA)

    escreva("\nLado B: ")
    leia(ladoB)

    escreva("\nLado C: ")
    leia(ladoC)

    triangulo = (ladoA + ladoA > ladoC) e (ladoA + ladoC > ladoB) e (ladoB + ladoC > ladoA)
    escreva("\nÉ triangulo? ", triangulo)

    equilatero = ladoA == ladoB e ladoA == ladoC e ladoB == ladoC  
    escreva("\nTriângulo Equilátero:  ",equilatero)

    isosceles = 
    ladoA == ladoB e ladoA != ladoC ou 
    ladoA == ladoB e ladoB != ladoC ou

    ladoB == ladoC e ladoB != ladoA ou 
    ladoB == ladoC e ladoC != ladoA ou 

    ladoC == ladoA e ladoC != ladoB ou
    ladoC == ladoA e ladoB != ladoC
    escreva("\nTriângulo Isósceles: ",isosceles )

    escaleno = triangulo == verdadeiro e ladoA != ladoB e 
    ladoB != ladoC e
    ladoC != ladoA 
    escreva("\nTriângulo Escaleno: ",escaleno)
  }
}


