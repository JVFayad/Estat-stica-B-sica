setwd("C:/Estatistica Basica/Estat-stica-B-sica")
library(xlsx)
# install.packages("qcc")
library(qcc)

tabela <- read.xlsx("dados/exercicio6.xls", sheetName = "Plan1")

qual <- tabela$Qualidade
pessoas <- tabela$Nº.pessoas
color = palette()[661]

names(pessoas) <- qual

jpeg('graficos/exercicio6_graf1.jpg')
pareto.chart(pessoas, ylab = "N? de pessoas", xlab = "Qualidade", ylab2 = "Porcentagem", main = "Exerc?cio 6", col = color) 
dev.off()
