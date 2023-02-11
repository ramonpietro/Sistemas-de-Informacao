#include <stdio.h>

int main() {
   int a = 5, b = 12;
   int *p;
   int *q;
   p = &a; // p aponta para a
   q = &b; // q aponta para b
   int c = *p + *q; // c recebe os valores contidos em p e q que sao os mesmos de a e b e faz uma soma
}