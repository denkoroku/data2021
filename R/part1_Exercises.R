# load packages
library(ggplot2)
library(dplyr) # we'll need this for Exercise 2
library(palmerpenguins) # we'll need this for Exercise 3
library(patchwork) # we'll need this for Exercise 4

#Exercise 1
# our first plot
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

#Exercise 2
#Using the starwars dataset create a plot of height vs weight with the points coloured by species.
ggplot(starwars, aes(x = height, y = mass, colour = species)) +
  geom_point()

#Exercise 3
#Using the penguins dataset create a bar chart of the species
ggplot(penguins, aes(x = as.factor(species))) + 
  geom_bar()+ 
  xlab("Species")

#and a scatterplot of flipper length against body mass for coloured by species, island or sex.
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point()

#Which plot tells the clearest story?
  #this question is impossible to answer since they are not comparable.
  #one plot has a single categorical variable and the other plot has the same categorical variable
  #but also has two additional continuous numerical variables.

#Exercise 4
#Taking your penguins scatterplot from above, use either facet_wrap() or the
#patchwork to create individual plots to compare the individual species,
#island or sex rather than using colour.

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()+
  facet_wrap(vars(species))






