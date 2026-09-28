#include <stdio.h>
#include <math.h>
// retira o ponto do numero indicado. Ex: 1.79 converte para 179

int main()
{
    float euroCentimo;
    int numero;
    printf("Introduza um montante em quoeficiente, podendo ter centimos: ");
    scanf("%f", &euroCentimo);

    numero = (int)round(euroCentimo * 100);
    printf("NUMERO: %d", numero);
}