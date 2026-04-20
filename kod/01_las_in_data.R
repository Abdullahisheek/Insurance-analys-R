install.packages(c("tidyverse", "readr", "dplyr", "ggplot2", "janitor"))

library(readr)
library(dplyr)
library(janitor)

# Läs in data
data_raw <- read_csv("data/insurance_costs.csv", show_col_types = FALSE)

# Städar kolumnnamn
data_raw <- clean_names(data_raw)

# Grundläggande översikt
cat("Antal rader och kolumner:\n")
print(dim(data_raw))

cat("\nKolumnnamn:\n")
print(names(data_raw))

cat("\nFörsta 6 raderna:\n")
print(head(data_raw))

cat("\nStruktur:\n")
str(data_raw)

cat("\nSaknade värden per kolumn:\n")
print(colSums(is.na(data_raw)))