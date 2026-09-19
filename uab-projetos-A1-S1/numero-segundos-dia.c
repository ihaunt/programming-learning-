#include <stdio.h>

int main()
{
    int horas, minutos, segundos;
    int segundosDia;
    printf("Calculo do numero de segundos desde o inicio do dia.\nHora: ");
    scanf("%d", &horas);
    printf("Minuto: ");
    scanf("%d", &minutos);
    printf("Segundos: ");
    scanf("%d", &segundos);

    segundosDia = (horas * 3600) + (minutos * 60) + segundos;

    printf("Numero de segundos desde o inicio do dia: %d", segundosDia);
}