library(ggplot2)

scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) 
scatter + geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")

d1 <- density(iris$Sepal.Width)
hist(iris$Sepal.Width, breaks=12, prob=TRUE, xlab="Sepal Width", main="Histogram & Density Curve")
lines(d1, lty=2, col="blue")

d2 <- density(iris$Sepal.Width)
hist(iris$Sepal.Length, breaks=12, prob=TRUE, xlab="Sepal Length", main="Histogram & Density Curve")
lines(d2, lty=2, col="blue")