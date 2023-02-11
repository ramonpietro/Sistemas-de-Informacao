#include <stdio.h>

void main() {
    int x, *p;
    x = 100;
    p = x;
    printf("O valor de p: %d.\n", *p);
    // p deveria apontar para x, p = &x
}
