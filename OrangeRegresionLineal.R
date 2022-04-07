#Establezco mi directorio de trabajo
setwd("C:/Users/alejandro.soto/Desktop/RStudio")
#Cargo librerias para leer archivos de excel y manipular datos
library(readxl)
library(dplyr)
library(readr)
titanic_data <- read_csv("titanic-data.csv")
summary(titanic_data)
plot(titanic_data)
library(tidyverse)
data("Orange")
head(Orange)
Orange %>%
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() +
  geom_abline(intercept = 17.3997,
              slope = 0.1068,
              col = 'blue') +
  geom_vline(xintercept = 800,
             col = 'red')

lm(circumference ~ age, data = Orange)

dias <- 800
medida <- 0.1068 * dias + 17.3997
print(medida)