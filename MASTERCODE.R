#INSTALACIÓN DE PACKAGES

install.packages("ggplot2")
install.packages("boxplot")
library(ggplot2)

iris

ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour=Species)) + geom_point()

p <- ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour=Species))
p <- p + geom_point(aes(shape = Species))
p <- p + xlab("sepal Length") + ylab("sepal Width") + ggtitle("SEPAL LENGTH AND WIDTH")
p <- p + geom_smooth(method = "lm")
p + facet_grid(Species ~ .)

iris
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour=Species)) + geom_point()
p <- ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour=Species))
p <- p + geom_point(aes(shape = Species))
p <- p + xlab("sepal Length") + ylab("sepal Width") + ggtitle("SEPAL LENGTH AND WIDTH")
p <- p + geom_smooth(method = "lm")
p + facet_grid(. ~ Species)

#IMPORTAMOS EL NUESTRO DATASET PARA TENER UNA VISIBILIDAD HOLISTICA

dat <- read.csv("D:/proyectos online/ddsupc/ddsupc/dat.csv", sep=";")
View(dat)

# FILTRO DE VARIABLES POR CRITERIOS DE: POSIXct, Factor y Chr, 

dat$InicioT <- as.POSIXct(dat$Starttime, origin="1970-01-01")
dat$FinT <- as.POSIXct(dat$Lasttime, origin="1970-01-01")
dat$Categoria <- as.factor(dat$Attackcategory)
dat$Subcategoria <- as.factor(dat$Attacksubcategory)
dat$Protcolo <- as.factor(dat$Protocol)
dat$OrigenIP <- as.character(dat$SourceIP)
dat$OrigenPuerto <- as.character(dat$SourcePort)
dat$DestinoIP <- as.character(dat$DestinationIP)
dat$DestinoPuerto <- as.character(dat$DestinationPort)
dat$Nombredeataque <- as.factor(dat$NameAttack)
dat$Referencias <- as.factor(dat$Referencia)

# FILTRAMOS COLUMNAS PARA QUEDAR SOLO CON EL ESTUDIO Y  DE POSIXct, Factor y Chr. 

dat2 <- dat[,-1]
dat3 <- dat2[,-1]
dat4 <- dat3[,-1]
dat5 <- dat4[,-1]
dat6 <- dat5[,-1]
dat7 <- dat6[,-1]
dat8 <- dat7[,-1]
dat9 <- dat8[,-1]
dat10 <- dat9[,-1]
dat11 <- dat10[,-1]
dat12 <- dat11[,-1]

View(dat12)

#ANÁLISIS POR VARIABLE EN GRAFICO UTILIZANDO PLOT

plot(dat12$InicioT)
plot(dat12$FinT)
plot(dat12$Categoria)
plot(dat12$Subcategoria)
plot(dat12$Protcolo)
plot(dat12$OrigenIP)
plot(dat12$OrigenPuerto)
plot(dat12$DestinoIP)
plot(dat12$DestinoPuerto)
plot(dat12$Nombredeataque)
plot(dat12$Referencias)



plot(x=dat12$InicioT, y=dat12$FinT, pch=1.3, col="blue")
plot(x=dat12$Categoria, y=dat12$Subcategoria, pch=1.3, col="blue")
plot(x=dat12$Protcolo, y=dat12$OrigenPuerto, pch=1.3, col="blue")
plot(x=dat12$Protcolo, y=dat12$DestinoPuerto, pch=1.3, col="blue")
plot(x=dat12$Protcolo, y=dat12$DestinoPuerto, pch=1.3, col="blue")
plot(x=dat12$Nombredeataque, y=dat12$DestinoPuerto, pch=1.3, col="blue")


plot(x=dat12$Nombredeataque <- sort(rnorm(47)), type = "s", main = "plot(x, type = \"s\")")
points(x=dat12$Nombredeataque, cex = .5, col = "dark red")


require(stats) # for lowess, rpois, rnorm
plot(cars)
lines(lowess(cars))

plot(sin, -pi, 2*pi) # see ?plot.function



# VERIFICAREMOS  LOS DATOS CATEGORICOS POR HISTOGRAMAS

hist(dat12$InicioT)
hist(dat12$FinT)
hist(dat12$Categoria)
hist(dat12$Subcategoria)
hist(dat12$Protcolo)
hist(dat12$OrigenIP)
hist(dat12$OrigenPuerto)
hist(dat12$DestinoIP)
hist(dat12$DestinoPuerto)
hist(dat12$Nombredeataque)
hist(dat12$Referencias)

pl <- ggplot(dat, aes(x = SourcePort, y = DestinationPort, colour=Protocol))
pl <- pl + geom_point(aes(shape = Protocol))
pl <- pl + xlab("SourcePort") + ylab("DestionationPort") + ggtitle("ANÁLISIS VULNERABILIDADES")
pl <- pl + geom_smooth(method = "lm")
pl + facet_grid(. ~ Protocol)














