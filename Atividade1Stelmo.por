programa
{
	inclua biblioteca Matematica --> Mat
	funcao inicio()
	{
		real valorDaSequencia, valorInicial = 9.5, decremento = 0.2
		inteiro contagemDeIteracoes = 1


		escreva("Exemplo de uso de la�o de repeti��o\n\n")
		escreva("Observe as repeti��es abaixo.\n\n")

		valorDaSequencia = valorInicial

		enquanto(contagemDeIteracoes<=3)
		{ 
			escreva(contagemDeIteracoes, "� Valor da sequ�ncia = ", Mat.arredondar(valorDaSequencia, 1), "\n")
			valorDaSequencia += - decremento
			contagemDeIteracoes++
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */