demographics <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-05/demographics.csv')
wages <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-05/wages.csv')
states <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-05/states.csv')

write.csv(demographics, "2023_09_05_union_membership/data/demographics.csv")
write.csv(wages, "2023_09_05_union_membership/data/wages.csv")
write.csv(states, "2023_09_05_union_membership/data/states.csv")

