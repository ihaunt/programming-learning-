#include <stdio.h>
/*Calcula o número de Euler e, através da utilização da série de Taylor para ex quando x=1: soma dos inversos dos fatoriais,
de 0 a K, com K a tender para infinito: 1/0! + 1/1! + 1/2! + ... + 1/K!*/

int main()
{
    int K;
    int factorial, cont;
    double soma, fracao;
    scanf("%d", &K);

    factorial = 1; // vai subir também, mas pro calculo factorial * cont - sobe ate K
    cont = 1;      // esse vai subir ate k
    soma = 1;      // vai somar acumulando

    while (cont <= K)
    {
        
        factorial = factorial * cont;
        fracao = 1.0 / factorial;
        soma += fracao;
        cont++;
    }
    printf("\nResultado: %.16g", soma);
    
    return 0;
}

