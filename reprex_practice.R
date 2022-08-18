#--------------- Practicing Reprex----------------#

library(tidyverse)
library(palmerpenguins)

#Not A Reprex
penguins %>% 
  select(species, body_mass_g, flipper_length_mm) %>% 
  filter(species == "(?i)Chinstrap") %>%
  str_to_lower(species) %>%
  group_by(island) %>% 
  summarize(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))

### A Reprex
library(tidyverse)

warpbreaks %>%
  str_to_lower(wool)

### A Fixing Reprex
library(tidyverse)

warpbreaks %>%
  mutate(wool = str_to_lower(wool))

### A REPREX WITH A SYSNTHEWSIZED DATA FRAME
library(tidyverse)

Alcohol <- tribble(
  ~beer, ~hard_alc, ~seltzer,
  "Corona", "Tequila", "White Claw",
  "Modelo", "Vodka", "Bud Light Seltzer",
  "Pacifico", "Henny", "Truly"
)

Alcohol %>%
  str_to_lower(beer)
