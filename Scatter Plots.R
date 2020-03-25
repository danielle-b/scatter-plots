library(tidyverse)
jobs_gender <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/jobs_gender.csv")
earnings_female <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/earnings_female.csv")
employed_gender <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/employed_gender.csv")


ggplot(data = earnings_female) +
  aes(x = Year, y = percent) +
  geom_point()

ggplot(data = earnings_female) +
  aes(x = Year, y = percent) +
  geom_point(alpha = 0.3) +
  xlim(1981, 2011) +
  ylim(50, 100) +
  theme(panel.background = element_rect(fill="white"))


create_scatter = function(x,y) {
    ggplot(data = employed_gender) +
    aes_string(x = x, y = y) +
    geom_point(alpha = 0.3) +
    xlim(1970, 2010) +
    ylim(45, 100) +
    theme(panel.background = element_rect(fill="white"))
}
x_var <- "year"
y_var <-c("total_full_time", "full_time_female", "full_time_male")
map2(x_var, y_var, create_scatter)


create_scatter = function(x,y) {
  ggplot(data = employed_gender) +
   aes_string(x = x, y = y) +
   geom_point(alpha = 0.3) +
    xlim(1970, 2015) +
    ylim(20, 100) +
    theme(panel.background = element_rect(fill="white"))
}
x_var <- "year"
y_var <-c("part_time_female", "full_time_female")
map2(x_var, y_var, create_scatter)


