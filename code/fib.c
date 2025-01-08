#include <stdio.h>

unsigned int fib(unsigned int n) {
    if (n < 2) return n;
    unsigned int a = 0, b = 1, c;
    for (unsigned int i = 1; i < n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main() {
    unsigned int n = 10;
    printf("fib(%u) = %u\n", n, fib(n));
    return 0;
}
