Cage <- read.csv("Cage.csv")
install.packages(ggplot2)

library(ggplot2)
library(dplyr)

library(hrbrthemes)

Ratings<- Cage[,1]

Genre <- Cage[,2]



Graph <- ggplot(data=Cage, aes(x = Ratings, group=Genre, fill=Genre)) +
  geom_density(adjust=1.5, position="fill") + 
  theme_ipsum() +labs(x ="IMDB User Ratings", y = "Density") 
Graph <- p + ggtitle("Nicolas Cage Feature Films Listed on IMDB") + 
  theme(plot.title = element_text(hjust = 0.5)) + labs(caption = "Twitter: @collinsryan1993 or Find Me On LinkedIN")
Graph


       