// Tom compile: c99 erf.c -o erf.out -Wall -O3 -g -lm
#include <stdio.h>
#include <math.h>

int main(void) {
    printf("The integral of a Normal(0, 1) distribution "
                "between -1.96 and 1.96 is: %g\n", erf(1.96*sqrt(1/2.)));
}
