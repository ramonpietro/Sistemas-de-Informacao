/* Faça um programa que leia um vetor de 8 posições e, em seguida, leia também 
dois valores X e Y quaisquer correspondentes a duas posições no vetor. Ao final seu 
programa devera´ escrever a soma dos valores encontrados nas respectivas posições
X e Y */
#include <stdio.h>

int main() {
    int i, V[8] = {6, 3, 5, 9, 2, 5, 6, 7};
    int x = V[3];
    int y = V[2];
    int soma = x + y;
    printf("Os componentes do vetor V sao: ");
    for (i = 0; i < 8; i++) {
        printf("%d ", V[i]);
    }
    printf("\nO valor de x eh de %d e o valor de y eh de %d", x, y);
    printf("\nA soma de x e y eh: %d", soma);
    return 0;
}