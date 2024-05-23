programa {
  real valores[5]
  cadeia dataehora[5]
  inteiro contador = 0
  cadeia descricoes[5]
  inteiro receitas = 0, saldo = 0
  
  funcao inicio() {
    inteiro menu
    enquanto(menu != 5) {
      escreva("\nBem vindo\n\nAqui você ira registrar despesas, receita, listar o fluxo de caixa ou listar o saldo atual\n\nPara começar selecione a opção que atende ao seu objetivo:\n[1] - Adicionar receita\n[2] - Adicionar despesa\n[3] - Listar fluxo de caixa\n[4] - Listar saldo atual\n[5] - Sair do menu\n\n")
      leia(menu)

      escolha(menu) {
        caso 1:
          adicionareceita()
        pare

        caso 2:
          adicionarDespesas()
        pare

        caso 3:
          listarfluxodecaixa()
        pare

        caso 4:
          listarsaldoatual()
        pare
      }
    }  
  }
  funcao adicionareceita() {
    se(receitas < 5) {
      escreva("\nInforme a descrição:\n")
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
    escreva("\nSeu saldo é de: ", saldo, "\n\n")
  }
}
