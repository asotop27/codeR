library(tidyverse)

data("mtcars")
View(mtcars)
table(mtcars$cyl)
barplot(table(mtcars$cyl),
        horiz = "FALSE",
        col = "green",
        border = "red",
        main = "Grafica de Barras",
        sub = "subtitulo",
        xlab = "Cilindros",
        ylab = "cantidad")
