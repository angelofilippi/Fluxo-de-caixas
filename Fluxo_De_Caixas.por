programa {
  real valores[5]
  cadeia dataehora[5]
  inteiro contador = 0
  cadeia descricoes[5]
  inteiro receitas = 0, saldo = 0
  
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
  funcao listarsaldoatual() {
    saldo = valorNeg - valores
    escreva("\nSeu saldo � de: ", saldo, "\n\n")
  }

  funcao adicionarDespesas(){
    para(inteiro i = 0; i < 2; i++){
      escreva("Adicione uma descri��o � sua despesa: ")
      leia(descricao[contadorReceitas])

      escreva("Qual a data? (Digite apenas o dia): ")
      leia(data[contadorReceitas])

      escreva("Qual a hora? ")
      leia(hora[contadorReceitas]) 

      escreva("Qual o valor? (negativo): ")
      leia(valorNeg[contadorReceitas])

      armazena[contadorReceitas] = verdadeiro
      contadorReceitas++

      escreva("\n\nReceita ", contador++, ":\n")
      escreva(descricao[i], "\n")

      se(data[i] <= 31){
        escreva("Data: ", data[i],"\n")
      }senao{
        escreva("Data inv�lida!\n")
      }

      se(hora[i] <= 2359){
        escreva("Hora: ", hora[i], "\n")
      }senao{
        escreva("Hora inv�lida!\n")
      }

      se(valorNeg[i] < 0){
        escreva("Valor: ", valorNeg[i], "\n\n")
      }senao{
        escreva("Valor inv�lido!\n\n")
      }

      
    }
  }

  funcao listarFluxoDespesas(){
    escreva("Aqui est� o seu fluxo de despesas:\n\n")

    para(inteiro i = 0; i < contadorReceitas; i++){
      escreva("Receita ", i, ":\n")
      escreva("Descri��o da despesa: ", descricao[i], "\n")
      escreva("Data: ", data[i], "\n")
      escreva("Hora: ", hora[i], "\n")
      escreva("Valor: ", valorNeg[i], "\n\n")
    }
  }
}
