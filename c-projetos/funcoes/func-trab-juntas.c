#include <stdio.h>
#include <math.h>
// Cada uma faz o que o nome sugere. No main(), um vetor de 6 posições e chamando as três funções, imprimindo os três resultados.

int maiorVetor(int vetor[], int tamanho)
{

    int maior = vetor[0];

    for (int i = 0; i < tamanho; i++)
    {
        if (vetor[i] > maior)
        {
            maior = vetor[i];
        }
    }

    return maior;
}

int menorVetor(int vetor[], int tamanho)
{

    int menor = vetor[0];

    for (int i = 0; i < tamanho; i++)
    {
        if (vetor[i] < menor)
        {
            menor = vetor[i];
        }
    }

    return menor;
}

float mediaVetor(int vetor[], int tamnho)
{

    float media = 0;
    int soma = 0;

    for (int i = 0; i < tamnho; i++)
    {
        soma += vetor[i];
    }
    media = (float)soma / tamnho;

    return media;
}

int main()
{

    int values[6];
    int maiorValor = 0;
    int menorValor = 0;
    float mediaValores = 0;

    for (int i = 0; i < 6; i++)
    {
        printf("Indique os numeros para obter: maior valor, menor valor e a media. Posicao[%d] \n", i + 1);
        scanf("%d", &values[i]);
    }

    maiorValor = maiorVetor(values, 6);
    menorValor = menorVetor(values, 6);
    mediaValores = round(mediaVetor(values, 6));

    printf("O maior valor eh: %d\n", maiorValor);
    printf("O menor valor eh: %d\n", menorValor);
    printf("A media dos valores eh: %f\n", mediaValores);

    return 0;
}