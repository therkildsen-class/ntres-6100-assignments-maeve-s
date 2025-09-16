library(tidyverse)

mpg
?mpg

cars
?cars

View(mpg)

head(cars, 4)

tail(cars)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class, size = cyl), shape = 1) +
  geom_smooth() +
  facet_wrap(~ year, nrow = 2) +
  theme_light()

?geom_point

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = hwy, color = year))

#There is a natural order for the values of year b/c they are numerical, so it 
#shows up in the legend as a gradient

#make code as concise as possible by putting something you want in all your plots to the
#ggplot() in the beginning


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class)
