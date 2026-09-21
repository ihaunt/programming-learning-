//  Calcula a soma dos quadrados dos dígitos de um número introduzido pelo utilizador.
#include <stdio.h>

int main()
{
    int n, soma, algarismo, numero;

    printf("\nCalculo da soma do quadrado dos digitos de um numero:\nNumero: ");
    scanf("%d", &n);

    soma = 0;
    numero = n;
    // nao recebe direto para nao sobre escrever e o laço terminar em 1 inves de 0
    while (numero > 0) // repete enquanto ainda houver dígitos
    {
        algarismo = numero % 10;             // 1) pega o último dígito
        soma = soma + algarismo * algarismo; // 2) soma o quadrado dele
        printf("\n n=%d; soma=%d", numero, soma);

        numero = numero / 10; // 3) remove esse dígito
    }
    printf("\nResultado: %d", soma);

    return 0;
}
