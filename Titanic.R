## Load libraries
library(dplyr)
library(tidyr)
library(ggplot2)


titanic <- read.csv("titanic_clean.csv", stringsAsFactors = FALSE)


View(titanic) 
# Check out the structure of titanic
str(titanic)

# Remove missing data from sex  
titanic_sex <- titanic[!is.na(titanic$sex) ,]
titanic <- titanic_sex


# Remove missing data from pclass  
titanic_pclass <- titanic[!is.na(titanic$pclass) ,]
titanic <- titanic_pclass

# Remove missing data from survive
titanic_survived <- titanic[!is.na(titanic$survived) ,]
titanic <- titanic_survived



# Use ggplot() for the first instruction 
ggplot(titanic, aes(x = factor(pclass), fill = factor(sex) )) +
  geom_bar(position = "dodge")




# Use ggplot() for the second instruction 
ggplot(titanic, aes(x = factor(pclass), fill = factor(sex) )) +
  geom_bar(position = "dodge" )+ 
  facet_grid(". ~ survived") 



# Position jitter (use below) 
posn.j <- position_jitter(0.5, 0)


# Use ggplot() for the last instruction
ggplot(titanic, aes(x = factor(pclass), y = age, col = factor(sex) )) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j)+
  facet_grid(". ~ survived") 






