int sum_even(int *p, int num){

int soma = 0;
int i=0;

if (num != 0){ //saber se o array tem elementos
	while(i<num){
		if( *p % 2 == 0 ){
			soma += *p;
		}
		p++;
		i++;
	}
}
return soma;
}
