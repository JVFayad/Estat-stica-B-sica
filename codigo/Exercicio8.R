setwd("C:/Estatística Básica/Estat-stica-B-sica")
# install.packages("gridExtra")
library(xlsx)
library(gridExtra)
library(grid)

tabela <- read.xlsx("dados/exercicio8.xls", sheetName = "Plan1")

tabela_tratada <- table(tabela$Altura.dos.pacientes)
color = palette()[661]

jpeg('graficos/exercicio8_graf1.jpg')
barplot(tabela_tratada, ylab = "Frequência", ylim = c(0,3), main = "Distribuicao de Frequência", col = color)
dev.off()

jpeg('graficos/exercicio8_graf2.jpg')
hist(tabela$Altura.dos.pacientes, main = "Histograma", xlab = "Altura dos Pacientes", ylab = "Frequência", col = color)
dev.off()
