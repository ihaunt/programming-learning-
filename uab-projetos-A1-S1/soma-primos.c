#include <stdio.h>
#include <stdbool.h>
int main()
{
    int N, n, d;
    long long resultado = 0; // a caixinha, começa vazia

    scanf("%d", &N);

    for (n = 2; n <= N; n++)
    {
        bool primo = true;

        for (d = 2; d * d <= n; d++)
        {
            if (n % d == 0)
            {
                primo = false;
                break;
            }
            printf("N%d\n: ", n);
        }

        if (primo)
        {
            resultado = resultado + n;   // joga o primo na caixinha
            printf("%lld\n", resultado); // mostra os valores
        }
    }

    return 0;
}