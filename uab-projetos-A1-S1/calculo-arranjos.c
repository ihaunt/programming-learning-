// Calculo dos arranjos de N, R a R: multiplicar os números de N-R+1 até N.

#include <stdio.h>

int main()
{

    int N, R, i, arranjos, resultado;

    printf("\nCalculo dos arranjos de N, R a R:\nIndique N: ");
    scanf("%d", &N);
    printf("\nIndique R: ");
    scanf("%d", &R);

    if (N >= R && R > 0)
    {
        arranjos = N - R + 1;

        i = arranjos;
        resultado = 1;
        while (i <= N)
        {
            resultado = resultado * i;
            printf("\ni=%d; arranjos=%d", i, resultado);
            i++;
        }

        printf("\nResultado: %d", resultado);
    }
    else
    {
        printf("\nErro: N tem de ser maior que R e este maior que 0.");
    }

    return 0;
}