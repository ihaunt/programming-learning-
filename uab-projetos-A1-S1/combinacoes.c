#include <stdio.h>
// Calcula as combinações de N, R a R: produto os números de N-R+1 até N, dividindo o resultado pelo resultado de R (resultado de todos os números de 1 a R).

int main()
{

    int N, R, cont_num, cont_div;
    int produto, resultado, anterior;

    printf("\nCalculo das combiNacoes de N, R a R: \nIndique N:");
    scanf("%d", &N);
    printf("Indique R: ");
    scanf("%d", &R);

    cont_num = N - R + 1;
    cont_div = 1;
    produto = 1;
    resultado = 1;

    if (N >= R && R > 0)
    {

        while (cont_num <= N)
        {

            anterior = resultado;
            produto = resultado * cont_num;
            resultado = produto / cont_div;

            printf("\n%d*%d=%d, %d/%d=%d", anterior, cont_num, produto, produto, cont_div, resultado);
            cont_num++;
            cont_div++;
        }
    }
    else
    {
        printf("\nErro: N tem de ser maior que R e este maior que 0.");
    }

    printf("\nResultado: %d", resultado);
    return 0;
}