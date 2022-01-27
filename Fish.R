library(datasets)
data("USArrests")
head(USArrests)
nrow(USArrests)
ncol(USArrests)
?USArrests
attach(USArrests)
summary(USArrests)
MurderAssault <- subset(USArrests,select=c(Murder,Assault))
MurderAssault
Goat <- lm(Murder~Assault)
summary(Goat)
#####Interpretation
#The p-value is less than the level of significance, which indicates that the model is significant; we reject the null hypothesis and conclude that there's relationship between murder and assault.
Solo <- subset(USArrests,select=c(Murder,UrbanPop))
Solo
fish <- lm(Murder~UrbanPop)
summary(fish)
#####Interpretation
# The model is significant. The p-value is greater than the level of significance; we fail to reject the null hypothesis and conclude that there's no relationship.
data("mtcars")
head(mtcars)
nrow(mtcars)
?mtcars
attach(mtcars)
summary(mtcars)
automaticmanual <- subset(mtcars,select = c(hp,am))
automaticmanual
bird <- lm(hp~am)
summary(bird)
#####Interpretation
# The model is significant. The p-value is greater than alpha(0.05), we fail to reject the null hypothesis and conclude that there's no relationship.
crown <- subset(mtcars,select = c(mpg,cyl))
crown
parrot <- lm(mpg~cyl)
summary(parrot)
#####Interpretation
# The model is significant. The p-value is less than alpha(0.05), we reject the null hypothesis and conclude that there's relationship.
########### Interpretation 
