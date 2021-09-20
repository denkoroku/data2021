library(tidyverse)
library(nycflights13)

ggplot(flights, aes(x =distance)) +
  geom_histogram(breaks =seq(0, 5000, by =100))


ggplot(flights, aes(x =distance)) +
  geom_histogram(binwidth = 100)

