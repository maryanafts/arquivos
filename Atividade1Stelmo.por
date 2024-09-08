programa
{
	inclua biblioteca Matematica --> Mat
	funcao inicio()
	{
		real valorDaSequencia, valorInicial = 9.5, decremento = 0.2
		inteiro contagemDeIteracoes = 1


		escreva("Exemplo de uso de laço de repetição\n\n")
		escreva("Observe as repetições abaixo.\n\n")

		valorDaSequencia = valorInicial

		enquanto(contagemDeIteracoes<=3)
		{ 
			escreva(contagemDeIteracoes, "° Valor da sequência = ", Mat.arredondar(valorDaSequencia, 1), "\n")
			valorDaSequencia += - decremento
			contagemDeIteracoes++
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */