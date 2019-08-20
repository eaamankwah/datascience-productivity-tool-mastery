library(tidyverse)
library(dslabs)
data(murders)
names(murders)

murders %>% mutate(rate = murders$total / murders$population * 100000) %>%
  mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()

