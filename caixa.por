programa {
  cadeia descricao[5]
  real data[5], hora[5], valorNeg[5]
  inteiro contador = 0

  funcao inicio() {
    adiocinarDespesas()
    listarFluxo()
  }

  funcao adiocinarDespesas(){
    para(inteiro i = 0; i < 5; i++){
      escreva("Adicione uma descrição à sua despesa: ")
      leia(descricao[i])

      escreva("Qual a data? (Digite apenas o dia): ")
      leia(data[i])

      escreva("Qual a hora? ")
      leia(hora[i]) 

      escreva("Qual o valor? (negativo): ")
      leia(valorNeg[i])

      escreva("\n\nReceita ", contador++, "\n")
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

  funcao listarFluxo(){
    para(inteiro i = 0; i < 1; i++){
      escreva(descricao[i])
      escreva(data[i])
      escreva(hora[i])
      escreva(valorNeg[i])
    }
  }
}
