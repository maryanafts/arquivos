programa
{
	funcao inicio()
	{
		const inteiro SOMA = 1, SUBTRACAO = 2, DIVISAO = 3, MULTIPLICACAO = 4
		inteiro codigoDaOperacao, numero, numeroDeIteracao = 1
		
		escreva("Tabuada de um n�mero e opera��o qualquer. \nMenu: \n")
		escreva("1 - soma  2- subtra��o  3 - divis�o  4 - multiplica��o  5 - sair\n")

		escreva("Selecione uma opera��o:\n")
		leia(codigoDaOperacao)

		se(codigoDaOperacao == 5)
		{
			escreva("Voc� selecionou 5 - sair.")
			retorne
		}

		escreva("Qual o n�mero inteiro para gerar a tabuada?\n")
		leia(numero)
		
		escreva("A tabuada de", numero, " est� abaixo: \n")

		escolha(codigoDaOperacao)
		{
			caso SOMA:

			enquanto(numeroDeIteracao<=10)
			{
				escreva(numeroDeIteracao, " + ", numero, " = ", numeroDeIteracao + numero, "\n")
				numeroDeIteracao++
			}
				 
			pare

			caso SUBTRACAO:

			enquanto(numeroDeIteracao<=10)
			{
				escreva(numeroDeIteracao, " - ", numero, " = ", numeroDeIteracao - numero, "\n")
				numeroDeIteracao++
			}
				 
			pare

			caso DIVISAO:

			enquanto(numeroDeIteracao<=10)
			{
				escreva(numeroDeIteracao, " / ", numero, " = ", numeroDeIteracao / numero, "\n")
				numeroDeIteracao++
			}
				 
			pare

			caso MULTIPLICACAO:

			enquanto(numeroDeIteracao<=10)
			{
				escreva(numeroDeIteracao, " * ", numero, " = ", numeroDeIteracao * numero, "\n")
				numeroDeIteracao++
			}
				 
			pare

		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1203; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */