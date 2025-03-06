library(tidyverse)

firstnames_female <- 
  'etunimitilasto-2025-02-04-dvv_naiset-kaikki.csv' %>% 
  read_csv2(col_types = 'cn')

firstnames_male <- 
  'etunimitilasto-2025-02-04-dvv_miehet-kaikki.csv' %>% 
  read_csv2(col_types = 'cn')

firstnames_female %>% 
  slice_max(order_by = Lukumäärä) %>%
  print()

firstnames_female %>% 
  summarise(M = mean(Lukumäärä),
            SD = sd(Lukumäärä)) %>%
  print()

firstnames_male %>% 
  slice_max(order_by = Lukumäärä) %>%
  print()

firstnames_male %>% 
  summarise(M = mean(Lukumäärä),
            SD = sd(Lukumäärä)) %>%
  print()
