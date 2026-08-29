#include <stdio.h>

int main(){

    int value [3][4];

    
    for(int i=0; i<3; i++){
        for(int j=0; j<4; j++){
            printf("Indique os numeros para comparar posicao [%d][%d]: ",i,j);
            scanf("%d",&value[i][j]);
        }
    }
    
    printf("");
    for(int i=0; i<3; i++){
        for(int j=0; j<4; j++){
            printf("%d\t", value[i][j]);
        }
        printf("\n");
    }

    int smallest = value [0][0];
    int largest = value [0][0];
    int colum_large= 0, line_large = 0;
    int colum_small= 0, line_small = 0;

     for(int i=0; i<3; i++){
        for(int j=0; j<4; j++){

            if(value[i][j] > largest){
                largest = value[i][j];
                line_large = i;
                colum_large = j;
            }
            if(value[i][j] < smallest){
                smallest = value[i][j];
                line_small = i;
                colum_small = j;
            }
            
        }
    }
printf("O maior numero e: %d, na posicao [%d][%d]\n", largest, line_large, colum_large);
printf("O menor numero e: %d, na posicao [%d][%d]\n", smallest, line_small, colum_small);

   return 0; 
}