###########################
# Loading Iris data set
###########################

# Method 1

library(datasets)
data("iris")

iris <- datasets::iris

# Method 2
# install.packages("RCurl")

library(RCurl)
iris <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv"))

# View the data
View(iris)

############################
# Display summary statistics
############################

# head() / tail()
head(iris, 4)
tail(iris, 4)

# summary()
summary(iris)
summary(iris$Sepal.Length)

# Check to see if there are missing data?
sum(is.na(iris))

# skimr() - expands on summary() by providing larger set of statistics
# install.packages("skimr")
# https://github.com/ropensci/skimr

library(skimr)

skim(iris) # Perform skim to display statistics

# Group data by species then perform skim
iris %>%
    dplyr::group_by(Species) %>%
    skim()

###########################
# Quick data visualization
# 
# R base plot()
###########################

# Panel plots
plot(iris)
plot(iris, col = "red")

# Scatter plot
plot(iris$Sepal.Width, iris$Sepal.Length)





