library(tidyverse)
library(modeldata)
theme_set(theme_minimal())
data(penguins)
penguins_sm <- filter(penguins, species != "Adelie")

glimpse(penguins_sm)

ggplot(penguins_sm, aes(x = flipper_length_mm,
                        y = body_mass_g,
                        col = species)) + 
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)

model <- lm(body_mass_g ~ flipper_length_mm * species,
            data = penguins_sm)
summary(model)

ggplot(penguins_sm, aes(x = flipper_length_mm,
                        y = body_mass_g,
                        col = species)) + 
    geom_point() +
    geom_abline(aes(intercept = -3037.196,
                    slope = 34.573,
                    col = "Chinstrap"))+
    geom_abline(aes(intercept = -3037.196-3750.085,
                    slope = 34.573 + 20.049,
                    col = "Gentoo"))
