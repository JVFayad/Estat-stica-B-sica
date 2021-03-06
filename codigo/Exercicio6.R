setwd("C:/Estatistica Basica/Estat-stica-B-sica")
library(xlsx)
# install.packages("qcc")
library(qcc)

tabela <- read.xlsx("dados/exercicio6.xls", sheetName = "Plan1")

qual <- tabela$Qualidade
pessoas <- tabela$"NÂº.pessoas"
color = palette()[661]

names(pessoas) <- qual

jpeg('graficos/exercicio6_graf1.jpg')
pareto.chart(pessoas, ylab = "No de pessoas", xlab = "Qualidade", ylab2 = "Porcentagem", main = "Pareto", col = color) 
dev.off()
