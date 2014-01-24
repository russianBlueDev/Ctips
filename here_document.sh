#!/bin/sh
go_flags="-g -Wall -include allheaders.h -lm `pkg-config --cflags --libs glib-2.0`"
alias go_c="clang -xc '-' $go_flags"

go_c <<"EOF"
int main(){
    long int testme = 2, ct =0;
    long int *primes = NULL;
    while(1){
        int isprime = 1;
        for (long int i=0; isprime && i< sqrt(testme) && i<ct; i++)
            isprime = testme % primes[i];
        if (isprime){
            printf("%li \r", testme); fflush(NULL);
            primes = realloc(primes, sizeof(long int)*(ct+1));
            primes[ct++] = testme;
        }
        testme ++;
    }
}
EOF

./a.out
