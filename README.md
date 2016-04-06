# bccpolya


-Descriçao do problema: Neste problema o objetivo era criar uma funçao em C que calculasse uma aproximaçao de uma raiz quadrada de um numero real, porem sem usar o math.h, ou seja, por meio de metodos de extraçao de raiz.


-Linguagem matematica:[metodo babilonico] Pegamos um numero qualquer "x", e calculamos "y", atraves dos algoritmos : xk = ak-1 + yk-1/2, yk = n/xk , onde nas iteraçoes xk e yk encontramos uma raiz n aproximada. (o erro da aproximaçao é E = (yk)2 - n  ).


-Portugues Estruturado:

Algoritmo

var
   num: Real

funcao raizq (double num)
var 
    
	 x = num / 2, y = 0.0, resto = 0, restoAnterior = -1:Real
    
    
	enquanto (restoAnterior - resto > 0)
	
		restoAnterior = resto

		y = num / x;
		x = (x + y) / 2.0;
		
		resto = (float) y - x;
		se (resto < 0) resto = resto * -1.0 entao 
		
fimfuncao		

inicio

	escreval("Escreva o numero: ")
	leia(&num)

	Se (num < 0) entao
	
		escreval("numero invalido")
		
	

	escreval("A raiz quadrada de", num  "é", raizq(num))
	
fimse
fimalgoritimo



-Fluxograma:
![Fluxograma](/fluxograma.png)


Termo "polya" no nome do repositorio: George Polya foi um matematico hungaro e professor de matematica, onde seu lema era "A arte de resolver problemas", o nome polya foi escolhido, pois cada um tem uma forma de resolver problemas,seja usando logicas, como metodos diferentes.

