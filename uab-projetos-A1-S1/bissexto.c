#include <stdio.h>

int Bissexto(int ano)
{
    return ano % 400 == 0 || (ano % 4 == 0 && ano % 100 != 0);
}

int DiasDoMes(int mes, int ano)
{
    if (mes == 2)
    {
        if (Bissexto(ano))
        {
            return 29;
        }
        else
        {
            return 28;
        }
    }
    else if (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 ||
             mes == 10 || mes == 12)
    {
        return 31;
    }
    else
    {
        return 30;
    }
}

int main()
{
    int ano, dias;
    printf("Indique ano: ");
    scanf("%d", &ano);

    printf("Indique mes: ");
    scanf("%d", &dias);

    /* teste de ano bissexto */
    if (Bissexto(ano))
        printf("%d", DiasDoMes(dias, ano));
    else
        printf("%d", DiasDoMes(dias, ano));
}