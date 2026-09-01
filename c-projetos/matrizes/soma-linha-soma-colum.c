#include <stdio.h>
int main() {

    int values[3][3];
    int sumLine = 0, sumColum = 0;


    for (int i = 0; i < 3; i++){
        for (int j = 0; j < 3; j++){
         printf("Indique os numeros que deseja somar, posicao: [%d][%d]\n",i , j);
         scanf("%d", &values[i][j]);
        }
    }
    
    for(int i=0; i<3; i++){
        sumLine = 0;
        for(int j=0; j< 3; j++){
            
            sumLine += values[i][j];
        }
    }
    printf("Valor soma Linhas: %d\n",sumLine);

    for (int i = 0; i < 3; i++){
        sumColum =0;
        for (int j = 0; i <3; j++){
            sumColum += values[j][i];
        }

    }
    printf("Valor soma Colunas: %d\n",sumColum);

    return 0;
}