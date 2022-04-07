library(tidyverse)
data("mtcars")

ggplot(data = mtcars,
       mapping = aes(x = factor(cyl)))+
  geom_bar()+
  coord_flip()

p <- ggplot(data = mtcars,
            mapping = aes(x = factor(cyl),
                          fill = factor(gear)))



p + geom_bar(position = 'stack', stat = 'count')

p + geom_bar(position = 'dodge', stat = 'count')

p + geom_bar(position = 'fill', stat = 'count')
