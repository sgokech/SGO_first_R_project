str(df_sgo1)
read_csv("~/SGO Courses/PHS/Projects in R/SGO_first_R_project/data/raw/insurance_with_date.csv")
library (readr)
library(tidyverse)
read_csv("~/SGO Courses/PHS/Projects in R/SGO_first_R_project/data/raw/insurance_with_date.csv")
print(read_csv("~/SGO Courses/PHS/Projects in R/SGO_first_R_project/data/raw/insurance_with_date.csv"))
fct <- df_sgo1 |> mutate(sex=factor(sex, levels = c("male", "female", "non-binary")))
unique(fct$region)
fctregn <- df_sgo1 |> mutate(region=factor(region, levels = c("southeast", "southwest", "northwest", "northeast")))
mutate(children2=ifelse(children >2, TRUE, FALSE))


ebola <- read.csv("data/raw/ebola.csv")
ebola2 <- ebola %>% mutate(Date = dmy(Date)) %>%
  filter(Date < as.Date("2015-03-31") & 
                            (Country == "Guinea"|Country == "Liberia"|Country == "Sierra Leone"))
#load library
library(ggplot2)
plot_ebola_point_v0 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_point()
plot_ebola_point_v0
plot_ebola_line_v0 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_line(aes(group = Country))
plot_ebola_line_v0
plot_ebola_col_v0 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_col(position = "stack")
plot_ebola_col_v0

# Save the plot as a PNG using ggsave
ggsave("output/figures/plot_ebola_point_v0.png", plot = plot_ebola_point_v0, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_point_v0.pdf", plot = plot_ebola_point_v0, width = 8, height = 6)

# Trying colour and fill
plot_ebola_point_v1 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_point(alpha = 0.7, colour = "black", fill = "blue", 
             shape = 21, size = 1.5, stroke = 1.5)
plot_ebola_point_v1 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_point(alpha = 0.7, colour = "black", fill = "red", 
                                                                                                       shape = 21, size = 1.5, stroke = 1.5)
plot_ebola_point_v2 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_point(alpha = 0.2, colour = "black", fill = "red", 
                                                                                                       shape = 21, size = 1.5, stroke = 1.5)
plot_ebola_line_v1 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + 
  geom_line(aes(group = Country), 
            alpha = 0.7, colour = "blue", linetype = "solid", linewidth = 1.5)
plot_ebola_line_v2 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + 
  geom_line(aes(group = Country), 
            alpha = 0.7, colour = "red", linetype = "solid", linewidth = 0.5)
plot_ebola_line_v3 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + 
  geom_line(aes(group = Country), 
            alpha = 0.7, colour = "orange", linetype = "dotdash", linewidth = 1.5)
plot_ebola_col_v1 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + geom_col(position = "stack", alpha = 0.7, fill = "blue", 
           linetype = "solid", linewidth = 0.5, width = 0.7)
plot_ebola_col_v2 <- ggplot(data = ebola2, mapping = aes(x = Date, y = Cum_conf_cases)) + 
  geom_col(position = "stack", alpha = 1.0, fill = "green", linetype = "solid", linewidth = 0.5, width = 0.7)

# Save the plot as a PNG using ggsave
ggsave("output/figures/plot_ebola_point_v1.png", plot = plot_ebola_point_v1, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_point_v1.pdf", plot = plot_ebola_point_v1, width = 8, height = 6)
ggsave("output/figures/plot_ebola_point_v2.png", plot = plot_ebola_point_v2, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_point_v2.pdf", plot = plot_ebola_point_v2, width = 8, height = 6)
ggsave("output/figures/plot_ebola_line_v1.png", plot = plot_ebola_line_v1, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_line_v1.pdf", plot = plot_ebola_line_v1, width = 8, height = 6)
ggsave("output/figures/plot_ebola_line_v2.png", plot = plot_ebola_line_v2, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_line_v2.pdf", plot = plot_ebola_line_v2, width = 8, height = 6)
ggsave("output/figures/plot_ebola_line_v3.png", plot = plot_ebola_line_v3, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_line_v3.pdf", plot = plot_ebola_line_v3, width = 8, height = 6)
ggsave("output/figures/plot_ebola_col_v1.png", plot = plot_ebola_col_v1, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_col_v1.pdf", plot = plot_ebola_col_v1, width = 8, height = 6)
ggsave("output/figures/plot_ebola_col_v2.png", plot = plot_ebola_col_v2, width = 8, height = 6, units = "in", dpi = 300)
ggsave("output/figures/plot_ebola_col_v2.pdf", plot = plot_ebola_col_v2, width = 8, height = 6)