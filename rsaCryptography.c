#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <math.h>
#include <string.h>

void printArray(uint32_t *X) {
    unsigned int i = 0;
    for (i = 0; i < 1024; i++) {
        if (i != 0) {
            if (i % 16 == 0) {
                printf("\n");
            }
        }
        printf("%5" PRIx32, X[i]); 
    }
    printf("\n");
}

uint32_t MMM(register uint32_t X, register uint32_t Y){
    register uint32_t T = 0;
    register unsigned int i = 0;
    for (i = 0; i < 17; i++) {

        register uint32_t n = (T & 0b1) ^ ( (((X >> i) & 0b1) & (Y & 0b1) ) );

        T = (T + (((X >> i) & 0b1) * Y + n * 77837) >> 1);
    }
    if (T >= 77837) {
        T = T - 77837;
    }
    
    Y = T;
    return Y;
}

void encrypt(uint32_t *X, uint32_t *Y) {
    unsigned int j = 0;
    for (j = 0; j < 1024; j+=2) {
        uint32_t rY = Y[j];
        uint32_t rY1 = Y[j + 1];

        uint32_t XPrime = MMM(X[j], 75729);
        uint32_t XPrime1 = MMM(X[j+1], 75729);

        uint32_t ans = MMM(XPrime, rY);
        uint32_t ans1 = MMM(XPrime1, rY1);
        
        uint32_t ansPrime = MMM(ans, 75729);
        uint32_t ansPrime1 = MMM(ans1, 75729);
        
        unsigned int i = 0;
        for (i = 17; i != 0; i--) {
            ans = MMM(ansPrime, rY);
            ansPrime = MMM(ans, 75729);
            ans1 = MMM(ansPrime1, rY1);
            ansPrime1 = MMM(ans1, 75729);
        }

        X[j] = ans;
        Y[j] = X[j];
        X[j+1] = ans1;
        Y[j+1] = X[j+1];
    }
}

void decrypt(uint32_t *X, uint32_t *Y) {
    unsigned int j = 0;
    for (j = 0; j < 1024; j+=2) {
        uint32_t rY = Y[j];
        uint32_t rY1 = Y[j + 1];

        uint32_t XPrime = MMM(X[j], 75729);
        uint32_t XPrime1 = MMM(X[j+1], 75729);

        uint32_t ans = MMM(XPrime, rY);
        uint32_t ans1 = MMM(XPrime1, rY1);

        uint32_t ansPrime = MMM(ans, 75729);
        uint32_t ansPrime1 = MMM(ans1, 75729);

        unsigned int i = 0;
        for(i = 32537; i != 0 ; i--){
            ans = MMM(ansPrime, rY);
            ansPrime = MMM(ans, 75729);  
            ans1 = MMM(ansPrime1, rY1);
            ansPrime1 = MMM(ans1, 75729);
        }

        X[j] = ans;
        Y[j] = X[j];
        X[j+1] = ans1;
        Y[j+1] = X[j+1];

    }   
}

unsigned int main () {
    // uint32_t P = 277;
    // uint32_t Q = 281;
    // uint32_t PQ = 77837;
    // uint32_t E = 19;
    // uint32_t D = 32539;
    // uint32_t m = 17;
    // uint32_t R = 131072;
    // R = 75729;

    uint32_t X[1024] = {0};
    uint32_t Y[1024] = {0};

    unsigned int i = 0;
    for (i = 0; i < 1024; i+=32) {
        X[i] = 0x0;
        X[i + 1] = 0x1;
        X[i + 2] = 0x2;
        X[i + 3] = 0x3;
        X[i + 4] = 0x4;
        X[i + 5] = 0x5;
        X[i + 6] = 0x6;
        X[i + 7] = 0x7;
        X[i + 8] = 0x8;
        X[i + 9] = 0x9;
        X[i + 10] = 0xA;
        X[i + 11] = 0xB;
        X[i + 12] = 0xC;
        X[i + 13] = 0xD;
        X[i + 14] = 0xE;
        X[i + 15] = 0xF;
        X[i + 16] = 0xFFFF;
        X[i + 17] = 0x1A1A;
        X[i + 18] = 0x2B2B;
        X[i + 19] = 0x3C3C;
        X[i + 20] = 0x4D4D;
        X[i + 21] = 0x5E5E;
        X[i + 22] = 0x6F6F;
        X[i + 23] = 0x7A7A;
        X[i + 24] = 0x8B8B;
        X[i + 25] = 0x9C9C;
        X[i + 26] = 0xADAD;
        X[i + 27] = 0xBEBE;
        X[i + 28] = 0xCFCF;
        X[i + 29] = 0xD2D2;
        X[i + 30] = 0xE3E3;
        X[i + 31] = 0xF4F4;

        Y[i] = 0x0;
        Y[i + 1] = 0x1;
        Y[i + 2] = 0x2;
        Y[i + 3] = 0x3;
        Y[i + 4] = 0x4;
        Y[i + 5] = 0x5;
        Y[i + 6] = 0x6;
        Y[i + 7] = 0x7;
        Y[i + 8] = 0x8;
        Y[i + 9] = 0x9;
        Y[i + 10] = 0xA;
        Y[i + 11] = 0xB;
        Y[i + 12] = 0xC;
        Y[i + 13] = 0xD;
        Y[i + 14] = 0xE;
        Y[i + 15] = 0xF;
        Y[i + 16] = 0xFFFF;
        Y[i + 17] = 0x1A1A;
        Y[i + 18] = 0x2B2B;
        Y[i + 19] = 0x3C3C;
        Y[i + 20] = 0x4D4D;
        Y[i + 21] = 0x5E5E;
        Y[i + 22] = 0x6F6F;
        Y[i + 23] = 0x7A7A;
        Y[i + 24] = 0x8B8B;
        Y[i + 25] = 0x9C9C;
        Y[i + 26] = 0xADAD;
        Y[i + 27] = 0xBEBE;
        Y[i + 28] = 0xCFCF;
        Y[i + 29] = 0xD2D2;
        Y[i + 30] = 0xE3E3;
        Y[i + 31] = 0xF4F4;
    }

    printf("*******************************************************************\n");
    printf("Original:\n");
    printArray(Y);

    encrypt(X, Y);

    printf("*******************************************************************\n");
    printf("Encrypt:\n");
    printArray(Y);

    decrypt(X, Y);
    
    printf("*******************************************************************\n");
    printf("Decrypt:\n");
    printArray(Y);
    return 0;
}
