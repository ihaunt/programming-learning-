
#include <stdio.h>

int main()
{
    int n, i, soma;

    printf("Calculo da soma dos primeiros N numeros.\nIndique N:");
    /* ler um número inteiro */
    scanf("%d", &n);
    /* na variável soma, será acumulado o resultado */
    soma = 0;
    i = 1; // inicia em pois o interador por padrao inicia em zero e precisamos do 1 para a primeira soma
    while (i<=n)
    {
        soma +=i;
        i++;
        printf("\nadicionar %d, parcial %d", i, soma);
    }
    
    /* mostrar resultado final */
    printf("\nTotal: %d\n", soma);
    return 0;
}
   