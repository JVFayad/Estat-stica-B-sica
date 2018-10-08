setwd("C:/Estatística Básica/Estat-stica-B-sica")
library(xlsx)
# install.packages("ggplot2")
library(ggplot2)

tabela <- read.xlsx("dados/exercicio2.xls", sheetName = "Plan1")

jpeg("graficos/exercicio2_graf1.jpg")
freq <- data.frame(table(tabela$Casas))
ggplot(freq, aes(x=Var1, y=Freq)) +
  geom_point(col="blue") +
  ylab("Frequência Absoluta") + xlab("Casa") +
  ggtitle("Frequência Absoluta")
dev.off()

jpeg("graficos/exercicio2_graf2.jpg")
freq_rl <- data.frame(prop.table(table(tabela$Casas))*100)
ggplot(freq_rl, aes(x=Var1, y=Freq)) +
  geom_point(col="blue") +
  ylab("Frequência Relativa em %") + xlab("Casa") +
  ggtitle("Frequência Relativa")
dev.off()

jpeg("graficos/exercicio2_graf3.jpg")
ggplot(tabela, aes(x=Casas, y="")) +
  geom_point(col="blue") +
  ylab("") + xlab("Casas") +
  ggtitle("Desvio Padrão") +
  geom_vline(xintercept = sd(tabela$Casas), col="yellow")  
dev.off()

jpeg("graficos/exercicio2_graf4.jpg")
ggplot(tabela, aes(x=Casas, y="")) +
  geom_point(col="blue") +
  ylab("") + xlab("Casas") +
  ggtitle("Variância") +
  geom_vline(xintercept = var(tabela$Casas), col="yellow")
dev.off()

jpeg("graficos/exercicio2_graf5.jpg")
ggplot(tabela, aes(x=Casas, y="")) +
  geom_point(col="blue") +
  ylab("") + xlab("Casas") +
  ggtitle("Media") +
  geom_vline(xintercept = mean(tabela$Casas), col="yellow")
dev.off()

jpeg("graficos/exercicio2_graf6.jpg")
ggplot(tabela, aes(x=Casas, y="")) +
  geom_point(col="blue") +
  ylab("") + xlab("Casas") +
  ggtitle("Mediana") +
  geom_vline(xintercept = median(tabela$Casas), col="yellow")
dev.off()

get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

jpeg("graficos/exercicio2_graf7.jpg")
ggplot(tabela, aes(x=Casas, y="")) +
  geom_point(col="blue") +
  ylab("") + xlab("Casas") +
  ggtitle("Moda") +
  geom_vline(xintercept = get_mode(tabela$Casas), col="yellow")  
dev.off()

