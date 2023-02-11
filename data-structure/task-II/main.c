#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define TAM 16

int main()
{
    setlocale(LC_ALL, "");
    
    int vetor[TAM];
    int i, aux, contadorA, contadorB, num;
    int busca;
    // variaveis para a busca bunaria
    int inicial, final, meio;
    int dado_encontrado;
    
    printf("Entre com dez numeros para preencher o array:\n");
    for (i = 0; i < TAM; i++) {
        scanf("%d", &vetor[i]);
    }
    
    printf("Ordem atual dos itens no array:\n");
    
    for (i = 0; i < TAM; i++){
        printf("%4d", vetor[i]);
    }
    
    for (contadorB = 1; contadorB < TAM; contadorB++) {
        for(contadorA = 0; contadorA < TAM - 1; contadorA++) {
            if (vetor[contadorA] > vetor[contadorB]) {
                aux = vetor[contadorA];
                vetor[contadorA] = vetor[contadorB];
                vetor[contadorB] = aux;
            }
        }
    }
    
    printf("\nElementos do array em ordem crescente:\n");
    for (i = 0; i < TAM; i++) {
        printf("%4d", vetor[i]);
    }
    printf("\n");
    
    // BUSCA
    printf("Digite um valor para procurar no vetor:\n");
    scanf("%d", &busca);
    
    // BUSCA BINARIA
    inicial =  0;
    final = 16;
    dado_encontrado = 0;
    while(inicial <= final && !dado_encontrado) {
        meio = (inicial + final) / 2;
        if(vetor[meio] == busca) {
            dado_encontrado = 1;
        } else if (vetor[meio] > busca) {
            final = meio - 1;
        } else {
            inicial = meio + 1;
        }
    }
    
    if(dado_encontrado == 1) {
        printf("Dado encontrado na posicao: %d", meio);
    } else {
        printf("Informacao nao encontrada no vetor");
    }
    
    return 0;
}


