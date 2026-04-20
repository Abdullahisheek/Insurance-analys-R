plot1 <- ggplot(df_clean, aes(x = smoker, y = charges)) +
  geom_boxplot() +
  labs(
    title = "Försäkringskostnad beroende på rökning",
    x = "Rökare",
    y = "Kostnad"
  )

ggsave("resultat/fig1_smoker.png", plot = plot1, width = 8, height = 5)

plot2 <- ggplot(df_clean, aes(x = age, y = charges)) +
  geom_point(alpha = 0.5) +
  labs(
    title = "Försäkringskostnad i relation till ålder",
    x = "Ålder",
    y = "Kostnad"
  )

ggsave("resultat/fig2_age.png", plot = plot2, width = 8, height = 5)

plot3 <- ggplot(df_clean, aes(x = bmi, y = charges)) +
  geom_point(alpha = 0.5) +
  labs(
    title = "Försäkringskostnad i relation till BMI",
    x = "BMI",
    y = "Kostnad"
  )

ggsave("resultat/fig3_bmi.png", plot = plot3, width = 8, height = 5)

plot4 <- ggplot(df_clean, aes(x = region, y = charges)) +
  geom_boxplot() +
  labs(
    title = "Försäkringskostnad per region",
    x = "Region",
    y = "Kostnad"
  )

ggsave("resultat/fig4_region.png", plot = plot4, width = 8, height = 5)