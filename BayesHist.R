# Load relevant libraries
library(tidyverse)
library(ggplot2)

# Define mixture model
f <- function(y) {
  return(.75*rbeta(1,1,5) + .25*rbeta(1,20,2))
}

n <- 100

y_set <- seq(0,1,1/n) 

plot_data <- data.frame(x=y_set,
                        y = sapply(y_set, function(a) f(a)))


ggplot(plot_data, aes(x=x,y=y)) +
  geom_point(alpha=0.25) +
  geom_line() + 
  theme_minimal()

####

# # Load relevant libraries
# library(tidyverse)
# library(ggplot2)
# 
# # Define the mixture model function
# f <- function() {
#   # Generate values from the mixture of two beta distributions
#   return(0.75*rbeta(1, 1, 5) + 0.25*rbeta(1, 20, 2))
# }
# 
# n <- 1000  # Increase the number of samples to make the plot smoother
# 
# # Generate mixture samples
# y_set <- replicate(n, f())
# 
# # Create data frame for plotting
# plot_data <- data.frame(x = seq(0, 1, length.out = n),
#                         y = y_set)
# 
# # Plot the data
# ggplot(plot_data, aes(x = x, y = y)) +
#   geom_point(alpha = 0.5) +  # Transparency to show density
#   geom_line(stat = "density", color = "blue", lwd = 1.5) + 
#   theme_minimal() +
#   labs(x = "X values", y = "Mixture density", 
#        title = "Mixture of Beta Distributions")
