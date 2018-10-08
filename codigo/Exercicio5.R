setwd("C:/Estatística Básica/Estat-stica-B-sica")
library(xlsx)
tabela <- read.xlsx("dados/exercicio5.xls", sheetName = "Plan1")

marcas <- tabela$Marcas
n_pessoas <- tabela$NÂº.pessoas
color = palette(rainbow(699))

jpeg('graficos/exercicio5_graf1.jpg')
barplot(n_pessoas, names.arg = marcas, xlab = "Marca de antitérmico", ylab = "Nº de Pessoas", main = "Exercício 5", col = color)
dev.off()

