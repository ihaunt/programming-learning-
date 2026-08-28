programa {
  funcao inicio() {

    const inteiro COMBUSTIVEL_OK = 95

    inteiro combustivel 

    logico clima, motores, comunicacao

    logico voar
    logico mostrarCombustivel 

    escreva("\nIndique Percentagem do combustível: ")
    leia(combustivel)

    escreva("\nClima favorável: (responda sim ou não) ")
    leia(clima)
    escreva("\nMotores funcionando: (responda sim ou não) ")
    leia(motores)
    escreva("\nComunicação funcionando: (responda sim ou não) ")
    leia(comunicacao)

   
    voar = combustivel >=  COMBUSTIVEL_OK e clima == verdadeiro e
     motores == verdadeiro e comunicacao == verdadeiro
   
    mostrarCombustivel = combustivel >= COMBUSTIVEL_OK

    escreva("\nPronto para voar:  ", voar)
    escreva("\nClima ok: ",clima)
    escreva("\nMotoresok: ",motores)
    escreva("\nComunicacao ok: ",comunicacao)
    escreva("\nCommbustivel ok: ",mostrarCombustivel)

  }
}
