setwd("C:/Estatística Básica/Estat-stica-B-sica")
library(xlsx)
tabela <- read.xlsx("dados/exercicio4.xls", sheetName = "Plan1")

salarios <- tabela$SalÃ.rios

jpeg('graficos/exercicio4_graf1.jpg')
hist(salarios,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Dados")
dev.off()