#include <string.h>
#include <stdio.h>

struct Aluno {
char nome[50];
int idade;
float nota;
};

int main(){
    struct Aluno aluno1;

    printf("Digite o nome do aluno: \n");
    scanf("%s",aluno1.nome);

    printf("Digite a idade do aluno: \n");
    scanf("%d", &aluno1.idade);

    printf("Indique a nota do aluno: \n");
    scanf("%f",&aluno1.nota);


    printf("\nInformacoes do Aluno: \n");
    printf("Nome: %s\n", aluno1.nome);
    printf("Idad: %d\n",aluno1.idade);
    printf("Nota: %.1f\n",aluno1.nota);

    return 0;
}