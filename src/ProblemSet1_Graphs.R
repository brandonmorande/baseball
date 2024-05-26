

Batting |>
  mutate(AVG = (H/AB)) |>
  filter(AB > 25) |>
  filter(yearID > 1919 & yearID < 2020) |>
  group_by(yearID) |>
  summarize(AVG = mean(AVG)) |>
  ggplot(aes(x=yearID,
             y= AVG)) +
  geom_point() +
  geom_line() +
  geom_smooth() +
  geom_vline(xintercept = c(1942, 1961, 1977, 1994, 2006)) +
  labs(title = "Mean AVG by Year",
       x = "Year",
       y = "League-Wide AVG")

  
