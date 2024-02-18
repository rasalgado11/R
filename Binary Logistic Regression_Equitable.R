
admissions <- read_csv("admissions.csv")
View(admissions)

ggplot(admissions, aes(x = gpa, #
                       y = admitted)) +
  geom_jitter(height = .09, 
              alpha = .1)

model <- glm(admitted ~ gpa, 
             data = admissions,
             family = "binomial")
summary(model)

ggplot(admissions, aes(x = gpa, 
                       y = admitted)) +
  geom_jitter(height = .05, 
              alpha = .1) +
  geom_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE)

