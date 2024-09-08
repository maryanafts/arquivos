programa
{	
	funcao inicio()
	{
		inteiro numeroDecimal 
		cadeia bits = ""
		cadeia resultadoExtra = ""
          inteiro contagem = 1
          inteiro numDeContagem

		escreva("Digite o inteiro decimal: \n")
		leia(numeroDecimal)

		//Convertendo o número decimal para binário
		faca
		{
			inteiro bit = numeroDecimal % 2
			bits = bit + bits  //Acumulando o bit no início da cadeia 'bits'
			numeroDecimal = numeroDecimal / 2
		}enquanto(numeroDecimal > 0)

		//Exibindo os bits a partir do MSB
		escreva("Em binário a partir do MSB: \n", bits)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 549; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */