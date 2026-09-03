#include <stdio.h>
// Soma diagonal de um array
int main()
{
    int sum = 0;
    int values[4][4];

    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            printf("Indique os numeros para a soma: [%d][%d]", i, j);
            scanf("%d", &values[i][j]);
        }
    }

    for (int i = 0; i < 4; i++)
    {

        sum += values[i][i];
    }

    printf("Soma da diagonal é: [%d] \n", sum);
    return 0;
}
