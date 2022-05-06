
install.packages("ggplot2")
library(ggplot2)

iris

ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour=Species)) + geom_point()

p <- ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour=Species))
p <- p + geom_point(aes(shape = Species))
p <- p + xlab("sepal Length") + ylab("sepal Width") + ggtitle("SEPAL LENGTH AND WIDTH")
p <- p + geom_smooth(method = "lm")
p + facet_grid(. ~ Species)

