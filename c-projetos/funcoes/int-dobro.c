#include <stdio.h>
// recebe um número e retorna o dobro dele

int dobro(int number)
{

    int result = number * 2;

    return result;
}

int main()
{

    int digitado = 0;
    int calq = 0;
    printf("Indique um numero para dobra-lo: \n");

    scanf("%d", &digitado);

    calq = dobro(digitado);
    printf("Resultado eh: %d", calq);
    return 0;
}