#include <stdio.h> 

int main() {
    int matriz_soma[4][4];
    int soma = 0; // Inicializado com 0

    // Inserir números
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            printf("Indique os numeros para soma posicao [%d][%d]: ", i, j);
            scanf("%d", &matriz_soma[i][j]); 
        }
    }

    // Exibir a matriz e somar
    printf("\nMatriz inserida:\n");
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            soma += matriz_soma[i][j];
            printf("%d\t", matriz_soma[i][j]);
        }
        printf("\n");
    }

    // Calcular a soma dos elementos
    printf("\nSoma total: %d\n", soma);

    return 0;
}