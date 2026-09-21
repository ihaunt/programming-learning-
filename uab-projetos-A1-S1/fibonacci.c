#include <stdio.h>

int main()
{

    int numero, fibonacci, fib_a, fib_b, i;

    printf("\nCalculo do valor da funcao Fibonacci: \nIndique N: ");
    scanf("%d", &numero);
    i = 3;

    if (numero <= i)
    {
        printf("\nN precisa ser maior que 3. ");
    }
    else
    {
        fibonacci = 0;
        fib_a = 1;
        fib_b = 2;

        while (i <= numero)
        {
            fibonacci = fib_a + fib_b; // faz calculo inicial
            fib_a = fib_b;             // salva o numero anterior para ser usado novamente no prox ciclo
            fib_b = fibonacci;         // salva o numero anterior para ser usado novamente no prox ciclo

            printf("\nFib(%d)=%d", i, fibonacci);
            i++;
        }
        printf("\nResultado: %d", fibonacci);
    }

    return 0;
}