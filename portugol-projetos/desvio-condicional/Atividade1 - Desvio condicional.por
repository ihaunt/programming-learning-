programa {
  funcao inicio() {
    const inteiro  MAX_TENTATIVA = 3 

    cadeia senhaDigitada, novaSenha
    cadeia senhaBD = "" 
    
    inteiro tentativa = 0
    logico respostaADM 

    escreva("\nCrie sua senha: ")
    leia(senhaBD)

   faca{
     escreva ("\nDigite a senha novamente: ")
     leia(senhaDigitada)
     tentativa = tentativa + 1

      se (senhaDigitada == senhaBD){            
        escreva("\nACESSO LIBERADO!. ")
        
      }senao se (tentativa == MAX_TENTATIVA){
        escreva("\nRecuperação de senha. Você é Administrador? ")
        escreva("\nResponda (sim ou não) ")
        leia(respostaADM)
          se (respostaADM){

            escreva("\nDigite nova senha: ")

            leia(novaSenha)

            senhaBD = novaSenha

            escreva("\nSenha atualizada \n")

            escreva("\nDigite senha novamente: ")
            leia(senhaDigitada)
            
          }se (senhaDigitada == senhaBD){            
          escreva("\nAcesso liberado. \n")
          } senao {
          escreva("\nPor favor contacte o Administrador. \n")
          pare
        } 
      }
    }enquanto (senhaDigitada != senhaBD)
  }
}


