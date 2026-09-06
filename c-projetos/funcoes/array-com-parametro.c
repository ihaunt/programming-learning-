#include <stdio.h>
// recebe um array e seu tamanho, e retorna a soma de todos os elementos.

int somarvector(int vector[], int size)
{
    int sum = 0;
    for (int i = 0; i < size; i++)
    {
        sum += vector[i];
    }

    return sum;
}

int main()
{

    int moreVector[5];
    int total = 0;

    for (int i = 0; i < 5; i++)
    {
        printf("Indique valor %d para soma: \n", i + 1);
        scanf("%d", &moreVector[i]);
    }

    total = somarvector(moreVector, 5);
    printf("Total valor somado: %d\n", total);

    return 0;
}
