#include <stdio.h>
#include <math.h>
/*Recebe um montante em quoeficiente (com cêntimos), e que determina o menor número de moedas de
cada tipo necessário para perfazer esse montante. Pode utilizar moedas de quoeficiente de todos os euroCentimoes disponíveis (2€, 1€, ...).*/

int main()
{

    double euroCentimo;

    int resto, quoeficiente, numero, final;
    int moedas[8] = {200, 100, 50, 20, 10, 5, 2, 1};

    printf("Introduza um montante em euros, podendo ter centimos: ");
    scanf("%lf", &euroCentimo);

    numero = (int)round(euroCentimo * 100); // converte o numero sem casa decimal

    if (euroCentimo <= 0)
    {
        printf("\nMontante precisa ser maior que zero.");
    }
    else
    {

        for (int i = 0; i < 8; i++)
        {
            resto = numero % moedas[i];
            quoeficiente = numero / moedas[i];
            numero = resto;
            final = moedas[i];

            if (quoeficiente > 0)
            {
                if (final == 200 || final == 100)
                {
                    int num = final / 100;
                    if (num == 1)
                    {
                        printf("%d euro: %d\n", num, quoeficiente);
                    }
                    else
                    {
                        printf("%d euros: %d\n", num, quoeficiente);
                    }
                }
                else
                {

                    if (final == 1)
                    {
                        printf("%d centimo: %d\n", final, quoeficiente);
                    }
                    else
                    {
                        printf("%d centimos: %d\n", final, quoeficiente);
                    }
                }
            }
        }
    }

    return 0;
}
