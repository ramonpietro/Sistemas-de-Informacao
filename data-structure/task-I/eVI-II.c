#include <stdio.h>

int main() {
   char *a, *b;
   a = "abacate";
   b = "uva";
   if (a < b)
   printf("%s vem antes de %s no dicionario", a, b);
   else
   printf("%s vem depois de %s no dicionario", a, b);
   // Os ponteiros *a e *b nao apontam para lugar nenhum
}
