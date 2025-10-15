library(tidyverse)
library(palmerpenguins)

#billlength ~ interaction of bodymass and sex
penguin_int_mod <- lm(bill_length_mm ~ body_mass_g +sex + body_mass_g: sex,
                      penguins)
summary(penguin_int_mod)


#shorthand for interactions
penguin_int_mod2 <- lm(bill_length_mm ~ body_mass_g * sex,
                       penguins)
summary(penguin_int_mod2)
