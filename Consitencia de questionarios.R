read_xlsx("Respostas_Teste_Cronbach.xlsx")
 
Respostas <- read_xlsx("Respostas_Teste_Cronbach.xlsx")
Respostas

alpha(Respostas[,2:8])
  