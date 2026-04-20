# ========================
# 2. Datastädning
# ========================

# Kontrollera saknade värden
colSums(is.na(df))

# Omvandla kategoriska variabler till faktorer
df$sex <- as.factor(df$sex)
df$region <- as.factor(df$region)
df$smoker <- as.factor(df$smoker)
df$chronic_condition <- as.factor(df$chronic_condition)
df$exercise_level <- as.factor(df$exercise_level)
df$plan_type <- as.factor(df$plan_type)

# Ta bort rader med saknade värden
df <- na.omit(df)

# Kontrollera resultatet
summary(df)
str(df)