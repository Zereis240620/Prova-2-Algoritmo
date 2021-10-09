programa
{
	inclua biblioteca Util --> u

	inteiro numbers[10]
	
	
	funcao inicio()
	{
		inteiro continua
			
		faca{				
			exibirMenu()
			
			continua = menuOP()
		
		}enquanto(continua != 9)
		escreva("Finalizando o Programa")
		
	}

	funcao exibirMenu()
	{
		escreva("\n1 – Gerar Vetor","\n",
			   "2 – Somar Pares","\n",
			   "3 – Somar Ímpares","\n",
			   "4 – Somar Entre 6 e 14","\n",
			   "5 – Gerar Vetor na Ordem Inversa","\n",
			   "6 – Gerar Vetor Copiar valores sem repetir","\n",
			   "9 – Finalizar","\n")	
	}

	funcao inteiro menuOP(){
		inteiro op

		escreva("Selecione uma opção valida: ")
		leia(op)


		escolha(op){
			caso 1:
				generateVetor()
				pare
			caso 2:
				sumPar()
				pare				
			caso 3:
				sumImpar()
				pare				
			caso 4:
				sumIntervalo()
				pare						
			caso 5:
				reverseVetor()
				pare						
			caso 6:
				zeroNumberRepeat()
				pare						
			caso 9:
				escreva("")
				pare										
			caso contrario:
				escreva("Opção não valida\n")
				pare
		}

		retorne op
	
	}

	funcao space(){
		escreva("\n================================================\n")	
	}
	
	funcao generateVetor(){
		inteiro count
		escreva("\nGerar Vetor\n")
		para(count = 0; count< 10; count++){
			numbers[count] = u.sorteia(1, 20)
			escreva(numbers[count]," ")
		}

		escreva("\nVetor Gerado")
		space()
		
	}

	funcao sumPar(){
		inteiro count,countAux = 0, sum = 0, numberPar[10]

		para(count = 0; count< 10; count++){
			se(numbers[count] % 2 == 0){
				numberPar[countAux] = numbers[count]
				sum += numbers[count]
				countAux++
			}
		}

		escreva("\nSoma dos numeros pares: [")
		
		para(count = 0; count < 10; count++){			
			se(numberPar[count] != 0){
				escreva(numberPar[count]," ")			
			}
		}

		escreva("] é ", sum)
		space()
		
		
	}


	funcao sumImpar(){
		inteiro count,countAux = 0, sum = 0, numberImpar[10]

		para(count = 0; count< 10; count++){
			se(numbers[count] % 2 != 0){
				numberImpar[countAux] = numbers[count]
				sum += numbers[count]
				countAux++
			}
		}

		escreva("\nSoma dos numeros impares: [")
		
		para(count = 0; count < 10; count++){			
			se(numberImpar[count] != 0){
				escreva(numberImpar[count]," ")			
			}
		}

		escreva("] é ", sum)
		space()
		
		
	}

	funcao sumIntervalo(){
		inteiro count,countAux = 0, sum = 0, numberInterval[10]
		
		para(count = 0; count < 10; count++){			
			se( numbers[count] > 6 e numbers[count] < 14){
				numberInterval[countAux] = numbers[count]
				sum += numbers[count]
				countAux++
			}
		}

		escreva("\nSoma dos numeros entre 6 e 14: [")
		
		para(count = 0; count < 10; count++){			
			se(numberInterval[count] != 0){
				escreva(numberInterval[count]," ")	
			}
		}

		escreva("] é ", sum)				
		space()
		
	}

	funcao reverseVetor(){
		inteiro count, countAux = 0, numbersReverse[10]

		para(count = 9; count >= 0; count--){			
			numbersReverse[countAux] = numbers[count]
			countAux++			
		}

		escreva("\nA ordem inversa do vetor principal: [")
		para(count = 0; count < 10; count++){						
			escreva(numbersReverse[count]," ")				
		}

		escreva("]")
		space()
	}

	funcao zeroNumberRepeat(){
		inteiro count, countAux = 0, numberAux[10]
		
		
		para(count = 0; count < 10; count++){															
			
			para(countAux = 0; countAux < 9; countAux++){
																			
				se(numbers[countAux] == numbers[count]){
														
					numberAux[countAux] = 0
					
				}senao{
					
					numberAux[count] = numbers[count]		
				}
				
			}			
		}

		escreva("\nVetor gerado: [")		
		para(count = 0; count < 10; count++){						
			escreva(numberAux[count]," ")			
		}

		escreva("]")
		space()
				
		
	}	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */