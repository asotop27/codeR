#Cargando datos
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)

#graficando con codigo
plot(x = year,
     y = disney)

#editando la grafica
plot(x = year,
     y = disney,
     main = 'Disney',
     xlab = '',
     ylab = '',
     col = 'cornflowerblue',
     pch = 16,
     panel.first = grid())

#otras funciones

barplot()
hist()
pie()


#Usar ggplot
#hacer dataframe
peliculas <- data.frame(year,
                        disney)
#graficar utilizando ggplot
ggplot(data = peliculas,
       mapping = aes(x = year,
                     y = disney))+
  geom_point() +
  labs(title = 'disney')
