programa
{
	inclua biblioteca Matematica-->m
	inclua biblioteca Tipos-->t
	inclua biblioteca Arquivos-->a
	
	funcao inicio()
	{
	real num1,num2
	const cadeia caminho="C:/Users/Aluno/Desktop/arquivo calc.txt"
	inteiro arquivo=a.abrir_arquivo(caminho,a.MODO_LEITURA)
	num1=t.cadeia_para_real(a.ler_linha(arquivo))
	a.fechar_arquivo(arquivo)
	cadeia  textoLinha=" "
	inteiro opcao
	titulo()
	menu()
	leia(opcao)
	limpa()
	escolha(opcao){
		caso 1://Inserir valor real e salvar no arquivo
		arquivo=a.abrir_arquivo(caminho,a.MODO_ESCRITA)
		titulo()
		escreva("Informe o valor real para salvar no arquivo:\n->")
		leia(num1)
		limpa()
		//-----
		textoLinha=t.real_para_cadeia(num1)
		a.escrever_linha(textoLinha,arquivo)
		a.fechar_arquivo(arquivo)
		escreva("Valor salvo no arquivo.\n\n")
		inicio()
		pare
		caso 2://Executar operação matemática com valor do arquivo
		faca{
		titulo()
		escreva("Informe a operação que deseja realizar:\n")
		menuOp()
		leia(opcao)
		limpa()
		}enquanto(opcao<1 ou opcao>4)
		escolha(opcao){
			caso 1://adicao
			titulo()
			escreva("Informe o segundo valor da operação:\n->")
			leia(num2)
			limpa()
			//-----
			escreva("",num1," + ",num2," = ",num1+num2,"\n\n")
			inicio()
			pare
			caso 2://subtracao
			titulo()
			escreva("Informe o segundo valor da operação:\n->")
			leia(num2)
			limpa()
			//-----
			escreva("",num1," - ",num2," = ",num1-num2,"\n\n")
			inicio()
			pare
			caso 3://divisao
			titulo()
			escreva("Informe o segundo valor da operação:\n->")
			leia(num2)
			limpa()
			//-----
			escreva("",num1," ÷ ",num2," = ",m.arredondar(num1/num2,2),"\n\n")
			inicio()
			pare
			caso contrario://multiplicacao
			titulo()
			escreva("Informe o segundo valor da operação:\n->")
			leia(num2)
			limpa()
			//-----
			escreva("",num1," x ",num2," = ",num1*num2,"\n\n")
			inicio()
		}
		pare
		caso 3://Sair do programa
		titulo()
		escreva("Programa finalizado. (╥__╥)\n\n")
		pare
		caso contrario:
		inicio()
	}
	}//<--FIM DA FUNÇÃO INICIO
	funcao vazio menu(){
		escreva("(1)Inserir valor real e salvar no arquivo\n(2)Executar operação matemática com valor do arquivo\n(3)Sair do programa\n->")
	}
	funcao vazio titulo(){
		escreva("---------- ARQUIVOS E OPERAÇÕES MATEMÁTICAS ----------\n\n")
	}
	funcao vazio menuOp(){
		escreva("(1)Soma\n(2)Subtração\n(3)Divisão\n(4)Multiplicação\n->")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 207; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */