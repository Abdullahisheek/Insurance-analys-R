# Ladda paket
library(tidyverse)

# Läs in data
df <- read_csv("data/insurance_costs.csv")

# Enkel datastädning
df_clean <- df %>%
  drop_na(charges, age, bmi, smoker)

# Gör om kategoriska variabler
df_clean$smoker <- as.factor(df_clean$smoker)
df_clean$region <- as.factor(df_clean$region)

# 🔹 Bygg regressionsmodell
model <- lm(charges ~ age + bmi + smoker + region, data = df_clean)

# 🔹 Visa resultat
summary(model)
# Prediktion exempel
predict(model, newdata = df_clean[1:5, ])