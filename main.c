#include <stdio.h>

double num;

double raizq (double num)
    {
	double x = num / 2, y = 0.0, resto = 0, restoAnterior = -1;
    
    
	while(restoAnterior - resto > 0)
	{
		restoAnterior = resto;

		y = num / x;
		x = (x + y) / 2.0;
		
		resto = (float) y - x;
		if(resto < 0) resto = resto * -1.0;
	}

    
    return x;
    
    }

int main (){

	printf("Escreva o numero: ");
	scanf("%lf", &num);

	if (num < 0)
	{
		printf("numero invalido\n");
		return 0;
	}

	printf("\nA raiz quadrada de %.2f e %.20lf\n", num, raizq(num));
	
	return 0;
}
