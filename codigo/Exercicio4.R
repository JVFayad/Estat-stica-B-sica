setwd("C:/Estatistica Basica/Estat-stica-B-sica")
library(xlsx)
tabela <- read.xlsx("dados/exercicio4.xls", sheetName = "Plan1")

salarios <- tabela$"SalÃ.rios"
color <- c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow")

jpeg('graficos/exercicio4_graf1.jpg')
hist(salarios,  main = "Histograma", labels = TRUE, 
     col = color,
     ylab = "Frequencia", xlab = "Dados")
dev.off()