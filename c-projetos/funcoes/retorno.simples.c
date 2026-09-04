#include <stdio.h>

void saudacao(char nome[])
{
    printf("Ola, %s! Bem-vindo(a).\n", nome);
}

int main()
{

    saudacao("Jennifer");
    return 0;
}