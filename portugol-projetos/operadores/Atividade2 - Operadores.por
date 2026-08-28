programa {
  funcao inicio() {

    const inteiro IDADE_MIN = 18  
    const cadeia SENHA_CORETA = "4ABaC"
    const logico DIGITAL_RECONHECIDA = verdadeiro


    inteiro idade
    cadeia senhaDigitada
    logico ehAdministrador 
    logico digital

    logico acessoLiberado
    logico acessoNegado

    escreva("\n Indique a idade do usuário: ")
    leia(idade)

    escreva("\n Senha Correta: ")
    leia(senhaDigitada)

    escreva("\n É administrador? (sim ou não): ")
    leia(ehAdministrador)

    escreva("\n Digital reconhecida: ")
    leia(digital)


    
    acessoLiberado = ehAdministrador == verdadeiro ou 
    idade == IDADE_MIN e 
    senhaDigitada == SENHA_CORETA e 
    digital == DIGITAL_RECONHECIDA
    escreva("\n Acesso liberado: Credenciais válidas", acessoLiberado)

    acessoNegado = nao ehAdministrador == verdadeiro ou 
    nao idade == IDADE_MIN e 
    nao senhaDigitada == nao SENHA_CORETA e 
    nao digital == DIGITAL_RECONHECIDA
    escreva("\n Acesso negado: Credenciais inválidas. ", acessoNegado)



  }
}
