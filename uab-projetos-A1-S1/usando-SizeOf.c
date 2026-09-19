#include <stdio.h>

int main()
{
    printf("\nOlá mundo!");
    printf("\nsizeof(char): %d", (char)sizeof(char));
    printf("\nsizeof(short): %hd", (short)sizeof(short));
    printf("\nsizeof(int): %d", (int)sizeof(int));
    printf("\nsizeof(long): %ld", (long)sizeof(long));
    printf("\nsizeof(long long): %lld", (long long)sizeof(long long));
    printf("\nsizeof(float): %.f", (float)sizeof(float));
    printf("\nsizeof(double): %.f", (double)sizeof(double));
    printf("\nsizeof(long double): %1.LF", (long double)sizeof(long double));
}