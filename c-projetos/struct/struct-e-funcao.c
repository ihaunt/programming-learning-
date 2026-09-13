#include <stdio.h>
#include <string.h>

// recebe um produto e retorna preço * quantidade

struct Produto
{
    char nome[50];
    int quantidade;
    float preco;
};

float valorTotal(struct Produto p)
{
    return p.preco * p.quantidade;
}

int main()
{

    float total = 0;

    struct Produto produtos[3];

    for (int i = 0; i < 3; i++)
    {
        printf("Indique o nome do produto: ");
        scanf("%s", produtos[i].nome);

        printf("Indique quantidade do produto: ");
        scanf("%d", &produtos[i].quantidade);

        printf("Indique preco do produto: ");
        scanf("%f", &produtos[i].preco);
    }

    for (int i = 0; i < 3; i++)
    {

        total = valorTotal(produtos[i]);
        printf("Valor total de %s: %.2f\n", produtos[i].nome, total);
    }

    return 0;
}
