programa {

  //Declara��o dos vetores 

  real valores[5]
  cadeia dataehora[5]
  inteiro contador = 0
  cadeia descricoes[5]
  inteiro receitas = 0, saldo = 0, contadorReceitas = 0
  real valorNeg[5]
  logico armazena[5]
  cadeia descricao[5]

  //Menu com objetivo de atender a escolha do usuario chamando a fun��o necessaria
  
  funcao inicio() {
    inteiro menu
    enquanto(menu != 5) {
      escreva("\nBem vindo\n\nAqui voc� ira registrar despesas, receita, listar o fluxo de caixa ou listar o saldo atual\n\nPara come�ar selecione a op��o que atende ao seu objetivo:\n[1] - Adicionar receita\n[2] - Adicionar despesa\n[3] - Listar fluxo de caixa\n[4] - Listar saldo atual\n[5] - Sair do menu\n\n")
      leia(menu)

      escolha(menu) {
        caso 1:
          adicionareceita()
          pare

        caso 2:
          adicionarDespesas()
          pare

        caso 3:
          listarFluxoDespesas()
          pare

        caso 4:
          listarsaldoatual()
          pare
      }
    }  
  }

  //fun��o que permite adicionar receita, n�o � permitido ter mais que 5 receitas

  funcao adicionareceita() {
    se(receitas < 5) {
      escreva("\nInforme a descri��o:\n")
      leia(descricoes[receitas])
      escreva("\nInforme a data e hora: (exemplo: 13:10)\n")
      leia(dataehora[receitas])
      escreva("\nInforme o valor da receita:\n")
      leia(valores[receitas])
      receitas = receitas + 1
    }senao {
      escreva("\nNumero de maximo de receitas atingido!\n")
    }
  }

  //Fun��o para somar valores das despesas e de receita

  funcao listarsaldoatual() {
    para (inteiro i = 0; i < contadorReceitas; i++) {
      saldo = valorNeg[i] + valores[i]
    }
    escreva("Seu saldo atual � de: ", saldo, "\n")
  }


  //fun��o para adiconar as despesas do fluxo, n�o � permitido mais que 5 despesas

  funcao adicionarDespesas(){ 
    se(contadorReceitas < 5) {
      escreva("Adicione uma descri��o � sua despesa: \n")
      leia(descricao[contadorReceitas])

      escreva("Adicione a data e hora: \n")
      leia(dataehora[contadorReceitas])

      escreva("Qual o valor? (negativo): \n")
      leia(valorNeg[contadorReceitas])

      contadorReceitas = contadorReceitas + 1
    }
  }


  //fun��o para busca nos vetores os valores as despesas

  funcao listarFluxoDespesas() {
    escreva("Aqui est� o seu fluxo de despesas:\n\n")
    para(inteiro i = 0; i < contadorReceitas; i++){
      escreva("Receita ", i+1, ":\n")
      escreva("Descri��o da despesa: ", descricao[i], "\n")
      escreva("Data e hora: ", dataehora[i], "\n")
      escreva("Valor: ", valorNeg[i], "\n\n")
      escreva("Receita ", i+1, ":\n")
      escreva("Descri��o da despesa: ", descricoes[i], "\n")
      escreva("Data e hora: ", dataehora[i], "\n")
      escreva("Valor: ", valores[i], "\n")
    }
  }
}

