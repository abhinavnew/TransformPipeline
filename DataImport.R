library(tidyverse)
library(dplyr)


tempo_fil=tempfile()
download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data",tempo_fil)
dat3=read_csv(tempo_fil)
file.remove(tempo_fil)

if(!require(gapminder)) {install.packages("gapminder"); library(gapminder)}

tidy_data=gapminder %>% filter(country %in% c("South Korea","Germany")) %>% select(country,year.fertility)

popgrp=gapminder %>% group_by(continent) %>% summarise(sum(as.numeric((pop))))

meangdp=gapminder %>% group_by(country) %>% summarize(mean(gdp))

asialife=gapminder %>%group_by(continent) %>% summarize(mean(lifeExp))  %>%   filter(continent=="Asia")

