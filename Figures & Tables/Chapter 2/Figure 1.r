library(ggplot2)
library(tidyverse)

# Create data
data <- data.frame(
  name=c("Cooperation","Focus","Communication","Honesty","Responsability","Creativity", "Initiative", "Discipline", "Respect", "Confidence", "Social connections", "Teamwork", "Leadership", "Problem-Solving", "Flexibility", "Organization", "Work Ethic", "Time Management", "Critical Thinking", "Learning", "Conflict-solving"),  
  value=c(4,2,13,1,4,2,7,4,2,2,5,12,6,8,4,4,2,5,3,4,1)
)

ordered_data <- data %>%
  arrange(value) %>%
  mutate(name = factor(name, levels = name))

# Barplot
ggplot(ordered_data, aes(x=name, y=value)) + 
  geom_bar(stat = "identity", color="blue", fill=rgb(0.1,0.4,0.5,0.7)) +
  scale_y_continuous(breaks=seq(0, max(data$value), by=5)) +
  theme(legend.position="none") +
  coord_flip()