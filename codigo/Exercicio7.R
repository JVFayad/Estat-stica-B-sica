setwd("C:/Estatistica Basica/Estat-stica-B-sica")
library(xlsx)

tabela <- read.xlsx("dados/exercicio7.xls", sheetName = "Plan1")
color = palette()[661]

jpeg('graficos/exercicio7_graf1.jpg')
plot(tabela, xlab = "Areas", ylab = "Atendimento", col = color)
dev.off()

jpeg('graficos/exercicio7_graf2.jpg')
barplot(tabela$Atendimento, names.arg = tabela$"Ã.reas", xlab = "Areas", ylab = "Atendimento", col = color)
dev.off()

