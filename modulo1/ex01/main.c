#include <stdio.h>

int main(){

int x = 5;
int* xPtr = &x;
float y = *xPtr + 3;
int vec[] = {10, 11, 12, 13};


printf("Values of: x=%d e y=%d \n", x, y);

printf("Address: x=%p e xPtr=%p \n", x, xPtr);

printf("Value pointed by: *xPtr=%d \n", *xPtr);

printf("Address: vec=%p \n", vec);

printf("Values of: vec[0]=%d ,vec[1]=%d, vec[2]=%d, vec[3]=%d \n", vec[0], vec[1],vec[2],vec[3]);

printf("Addresses: vec[0]=%p ,vec[1]=%p, vec[2]=%p, vec[3]=%p \n", vec[0], vec[1],vec[2],vec[3]);

printf("b) O vetor 'vec' tem uma referência começada por 0x... , os valores de cada casa do vector utilizam o mesmo prefixo 0x seguidos de sequência alfabética.\n");

printf("c) sim, computadores diferentes terão diferentes referências de memória dispoiníveis durante a execução do script.\n");

return 0;
}





