#Exercise 2
library(tidyverse)
library(openintro)
library(ggmosaic)

#Exercise 1

#plot type 1
stocks_18 %>%
  pivot_longer(cols =  cat:xom, names_to = "company", values_to = "shareprice")%>%
  ggplot(aes(x = date, y = shareprice, col = company))+
  geom_point()+
  geom_path()

#plot type 2
ggplot(drone_blades, aes(x =supplier, y =inspection)) +
  geom_bin2d() +
  scale_fill_viridis_c()

#plot type 3
ggplot(drone_blades) +
  geom_mosaic(aes(x = product(supplier, inspection), fill = inspection))
  
            
#Exercise 2
#Using the penguins dataset 
library(palmerpenguins)
  
#a stacked (or multiple) bar plot of the island and species variables;
ggplot(penguins, aes(x=island, fill = species))+
  geom_bar()

#a contingency table of the counts of the two variables;
count(penguins, island, species) %>%
  pivot_wider(names_from =species, values_from =n)

#a mosiac plot of the two variables.
ggplot(penguins) +
  geom_mosaic(aes(x = product(species, island), fill = species))

#Which is your preferred way of visualising the relationship?
  #I prefer the bar chart

#What are the strengths and weaknesses of each?
  #strenghts of bar chart:
    # more familiar so more accessible to general public 
    # numerical axis so you can see the size of populations

  #weakness of bar chart:
    # tricky to compare the numbers of Adelie since they lack a common baseline

  #strengths of mosaic:
    # it looks fancy so can be used to impress people

  #weaknesses of mosaic:
    #the different aspect ratios of the rectangles makes the areas difficult to compare
    

#Extension
library(patchwork)
penguin_table <- count(penguins, island, species) %>%
  pivot_wider(names_from =species, values_from =n)

penguin_mosaic <- ggplot(penguins) +
  geom_mosaic(aes(x = product(species, island), fill = species))

penguin_mosaic + gridExtra::tableGrob(penguin_table)

#I don't understand which order of labels it wants me to "fix" 



