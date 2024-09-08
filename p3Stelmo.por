programa
{
	inclua biblioteca Matematica --> Mt
	inclua biblioteca Util --> Ut
	
	funcao real calculaDesbalanceamento(real maiorTensao, real menorTensao)
	{
		retorne maiorTensao / menorTensao // EQUAÇÃO 01
	}
	
	funcao real calculaDesequilibrio(real tensao, real menorTensao)
	{
		retorne tensao / menorTensao // EQUAÇÃO 02
	}
	
	funcao real corrigeTensao(real tensao, real incremento, inteiro minMultiplo, inteiro maxMultiplo)
	{
		retorne tensao + incremento * Ut.sorteia(minMultiplo, maxMultiplo) // EQUAÇÃO 04
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_DE_BATERIAS = 4
		const real TENSAO_NOMINAL_DA_BATERIA_EM_V = 12.0
		const real TENSAO_MAXIMA_DE_ENTRADA = 15.0
		const real TENSAO_MINIMA_DE_ENTRADA = 10.0

		const inteiro NUMERO_DE_DECIMAIS = 2

		const real PERCENTUAL_BALANCEAMENTO = 0.05

		const real INCREMENTO_DE_TENSAO = 0.05
		const inteiro MINIMO_MULTIPLO = 0
		const inteiro MAXIMO_MULTIPLO = 5

		real vetorDasBaterias[NUMERO_DE_BATERIAS]
		logico entradaErrada
		inteiro indice

		para(indice=0; indice<NUMERO_DE_BATERIAS; indice++)
		{
			faca
			{
				escreva("Entre com a tensão em Volts da bateria ", indice + 1 ,".\n")
				leia(vetorDasBaterias[indice])
				
				entradaErrada = vetorDasBaterias[indice] <= 0.0 ou vetorDasBaterias[indice] < TENSAO_MINIMA_DE_ENTRADA ou vetorDasBaterias[indice] > TENSAO_MAXIMA_DE_ENTRADA 
				se(entradaErrada)
				{
					escreva("Entradas ERRADAS! Entre com um valor positivo entre [",TENSAO_MINIMA_DE_ENTRADA ,",",TENSAO_MAXIMA_DE_ENTRADA ,"] e não nulo.\n")
				}
				
			}enquanto(entradaErrada)
		}

		inteiro i
		real maiorTensao, menorTensao
		maiorTensao = vetorDasBaterias[0]
		menorTensao = vetorDasBaterias[0]

		para(i=0; i < NUMERO_DE_BATERIAS; i++)
		{
			se(maiorTensao < vetorDasBaterias[i])
			{
				maiorTensao = vetorDasBaterias[i]
			}
			se(menorTensao > vetorDasBaterias[i])
			{
				menorTensao = vetorDasBaterias[i]
			}
		}
		escreva("A maior tensão é = ", maiorTensao, " e a menor tensão é = ", menorTensao, "\n")

		real desbalanceamentoDeTensaoDasBaterias = calculaDesbalanceamento(maiorTensao, menorTensao)

		real limiarDeBalanceamento = 1 + PERCENTUAL_BALANCEAMENTO

		real desequilibrioDeTensao
		se(desbalanceamentoDeTensaoDasBaterias > limiarDeBalanceamento)
		{
			escreva("Baterias desbalanceadas:\n")
			para(indice=0; indice<NUMERO_DE_BATERIAS; indice++)
			{
				desequilibrioDeTensao = calculaDesequilibrio(vetorDasBaterias[indice], menorTensao)

				se(desequilibrioDeTensao > limiarDeBalanceamento)
				{
					escreva(" Bateria ", indice +1, " sem carregamento\n")
					
					vetorDasBaterias[indice] = corrigeTensao(vetorDasBaterias[indice], -INCREMENTO_DE_TENSAO, MINIMO_MULTIPLO, MAXIMO_MULTIPLO)
				}
				senao 
				{
					escreva(" Bateria ", indice +1, " em carregamento\n")
	
					vetorDasBaterias[indice] = corrigeTensao(vetorDasBaterias[indice], INCREMENTO_DE_TENSAO, MINIMO_MULTIPLO, MAXIMO_MULTIPLO)
				}
	
				escreva("\tTensão na bateria ", indice +1, " = ", Mt.arredondar(vetorDasBaterias[indice], NUMERO_DE_DECIMAIS), " V\n")
			}
		}
		senao
		{
			escreva("Baterias balanceadas:\n")
		}

		real somatorioDaDiferencaTensaoDaBAteriaComTensaoNominal = 0.0

		para(indice=0; indice<NUMERO_DE_BATERIAS; indice++)
		{
			somatorioDaDiferencaTensaoDaBAteriaComTensaoNominal += Mt.valor_absoluto(vetorDasBaterias[indice] - TENSAO_NOMINAL_DA_BATERIA_EM_V)
		}

		real grauDeBalanceamentoDeCargaNominalDasBaterias = 1 - somatorioDaDiferencaTensaoDaBAteriaComTensaoNominal / (NUMERO_DE_BATERIAS * TENSAO_NOMINAL_DA_BATERIA_EM_V)

		escreva("Grau de balanceamento de carga nominal das baterias = ", Mt.arredondar(grauDeBalanceamentoDeCargaNominalDasBaterias, NUMERO_DE_DECIMAIS), "\n")

		se(grauDeBalanceamentoDeCargaNominalDasBaterias < limiarDeBalanceamento)
		{
			escreva("Baterias desbalanceadas em relação ao valor nominal\n")
		}
		senao
		{
			escreva("Baterias balanceadas em relação ao valor nominal\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */