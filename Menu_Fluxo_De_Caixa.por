programa {
  funcao inicio() {
    menufluxodecaixa()
  }
  funcao menufluxodecaixa() {
    inteiro menu

    escreva("\nBem vindo\n\nAqui você ira registrar despesas, receita, listar o fluxo de caixa ou listar o saldo atual\n\nPara começar selecione a opção que atende ao seu objetivo:\n[1] - Adicionar receita\n[2] - Adicionar despesa\n[3] - Listar fluxo de caixa\n[4] - Listar saldo atual\n[5] - Sair do menu\n")
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
