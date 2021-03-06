setwd("C:/Estatistica Basica/Estat-stica-B-sica")
# install.packages("gridExtra")
library(xlsx)
library(gridExtra)
library(grid)

tabela <- read.xlsx("dados/exercicio9.xls", sheetName = "Plan1")
color = palette()[661]

jpeg('graficos/exercicio9_graf1.jpg')
histg <- hist(tabela$"SalÃ.rios", main = "Histograma", xlab = "Salario", ylab = "Frequencia", breaks=(max(tabela) - min(tabela)) / 5, col = color)
dev.off()

intervals <- cut(tabela$"SalÃ.rios", breaks = histg$breaks, right = FALSE, include.lowest = TRUE)
dist_freq <- cbind(table(intervals))
dist_freq

