#include <stdio.h>
// que retorna se o número for par ou se for ímpar

int ehPar(int num)
{
    return num % 2 == 0;
}

int main()
{

    int numero = 0;

    printf("Indique um numero: \n");
    scanf("%d", &numero);

    if (ehPar(numero))
    {
        printf("O numero %d eh par\n", numero);
    }
    else
    {
        printf("O numero %d eh impar\n", numero);
    }

    return 0;
}