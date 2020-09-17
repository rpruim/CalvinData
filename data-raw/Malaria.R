## code to prepare `DATASET` dataset goes here
library(dplyr)
library(forcats)
library(mosaic)
set.seed(123)
Malaria <-
  dplyr::bind_rows(
    do(9) * tibble(group = "treatment", malaria = "no"),
    do(5) * tibble(group = "treatment", malaria = "yes"),
    do(6) * tibble(group = "placebo", malaria = "yes")
  ) %>% shuffle() %>%
  mutate(group = factor(group), malaria = factor(malaria)) %>%
  select(group, malaria)

Malaria2 <-
  Malaria %>%
  mutate(
    group = forcats::fct_recode(group, P = "placebo", T = "treatment"),
    malaria = forcats::fct_recode(malaria, Y = "yes", N = "no")
  ) %>%
  arrange(group, malaria)

usethis::use_data(Malaria, overwrite = TRUE)
usethis::use_data(Malaria2, overwrite = TRUE)
