#include <stdio.h>
#include <string.h>
// cria um objeto e armazena os dados no array

struct Produto
{

    char nome[50];
    float preco;
    int quantidade;
};

int main()
{

    struct Produto produto[3];

    for (int i = 0; i < 3; i++)
    {
        printf("Indique o nome do Produto: ");
        scanf("%s", produto[i].nome);

        printf("Indique o preco: ");
        scanf("%f", &produto[i].preco);

        printf("Indique a quantidade: ");
        scanf("%d", &produto[i].quantidade);
    }

    for (int i = 0; i < 3; i++)
    {
        printf("Nome do produto: %s\n", produto[i].nome);
        printf("Preco: %f\n", produto[i].preco);
        printf("Quantidade: %d\n", produto[i].quantidade);
    }

    return 0;
}