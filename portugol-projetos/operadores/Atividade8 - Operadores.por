programa {
  funcao inicio() {

   inteiro senha
   logico naoPode, ehPar, tamanhoSenha, emZero

   escreva("\n Digite senha: ")
   leia(senha)

   naoPode = senha == 123456.
   escreva("\nSenha é  igual a 123456: "+ naoPode)

   ehPar = (senha %2 == 0)
   escreva("\nSenha é par: ",ehPar)

   emZero = (senha % 10 == 0)
   escreva("\nSenha termina em 0:  ", emZero)

   tamanhoSenha =  senha >= 100000 e  senha <= 900000
   tamanhoSenha != verdadeiro
   escreva("\nSenha esta entre 100000 e 999999:  ",tamanhoSenha)
   
  }
}
