#include <stdio.h>

int main()
{
    int n, d;

    scanf("%d", &n);

    for (d = 2; d * d <= n; d++)
    {
        if (n % d == 0)
        {
            printf("%d\n", d);
            return 0;
        }
    }

    printf("0\n");
    return 0;
}