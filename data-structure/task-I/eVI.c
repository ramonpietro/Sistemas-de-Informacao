/* Faça um programa que receba do usuário um vetor com 10 posições.
Em seguida devera ser impresso o maior e o menor elemento do vetor. */

#include <stdio.h>
#include<stdlib.h>
#include<limits.h>

int main() {
    int i = 0;
    int V[10];
    int maior = INT_MIN;
    int menor = INT_MAX;
    for (i; i < 10; i++) {
        printf("Digite um numero:\n"),
        scanf("%d", &V[i]);
        if (menor > V[i]) {
            menor = V[i];
        }
        if (maior < V[i]) {
            maior = V[i];
        }
    }
    printf("O menor valor eh: %d\n", menor);
    printf("O maior valor eh: %d", maior);
    return 0;
}