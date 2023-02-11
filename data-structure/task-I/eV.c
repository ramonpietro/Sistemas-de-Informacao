#include <stdio.h>

int main() {
   int x, y, *p;
   y = 0;
   p = &y; // p aponta para y
   x = *p; // x recebe o valor do ponteiro p apontado para y
   x = 4; // x atualiza o valor para 4
   (*p)++; // p incrementa mais 1
   --x; // x decrementa menos 1
   (*p) += x; // p que esta valendo 1 a soma com o valor de x que eh 3 e 
            // atualiza o seu valor para 4
}