programa {
  cadeia descricao[2]
  real data[2], hora[2], valorNeg[2]
  inteiro contador = 1, contadorReceitas = 0
  logico armazena[2]

  funcao inicio() {
    adiocinarDespesas()
    listarFluxoDespesas()
  }

  funcao adiocinarDespesas(){
    para(inteiro i = 0; i < 2; i++){
      escreva("Adicione uma descrição à sua despesa: ")
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
        escreva("Data inválida!\n")
      }

      se(hora[i] <= 2359){
        escreva("Hora: ", hora[i], "\n")
      }senao{
        escreva("Hora inválida!\n")
      }

      se(valorNeg[i] < 0){
        escreva("Valor: ", valorNeg[i], "\n\n")
      }senao{
        escreva("Valor inválido!\n\n")
      }

      
    }
  }

  funcao listarFluxoDespesas(){
    escreva("Aqui está o seu fluxo de despesas:\n\n")

    para(inteiro i = 0; i < contadorReceitas; i++){
      escreva("Receita ", i, ":\n")
      escreva("Descrição da despesa: ", descricao[i], "\n")
      escreva("Data: ", data[i], "\n")
      escreva("Hora: ", hora[i], "\n")
      escreva("Valor: ", valorNeg[i], "\n\n")
    }
  }
}
