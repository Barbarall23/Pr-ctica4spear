#Ejercicio1
Sys.which("make")
install.packages("readxl")
library(readxl)

spear <- read_excel("c:/spearheads/spearheads.xlsx")
spear <- as.data.frame(spear)
View(spear)
str(spear)
class(spear)

spear <- as.data.frame(spear)
class(spear)

#Ejercicio2
names(spear)[names(spear) == "Mat"] <- "Materiales"
names(spear)[names(spear) == "Con"] <- "Contexto"
names(spear)[names(spear) == "Cond"] <- "Conservación"
names(spear)[names(spear) == "Loo"] <- "Loop"
names(spear)[names(spear) == "Peg"] <- "Remache"
names(spear)[names(spear) == "Date"] <- "Fecha"
names(spear)[names(spear) == "Maxle"] <- "Longitug_max"
names(spear)[names(spear) == "Socle"] <- "Longitud_encaje"
names(spear)[names(spear) == "Maxwi"] <- "Ancho_max"
names(spear)[names(spear) == "Upsoc"] <- "Ancho_encaje"
names(spear)[names(spear) == "Maxwit"] <- "Ancho_max_encaje"
names(spear)[names(spear) == "Weight"] <- "Peso"

#Ejercicio3
spear$Contexto=factor(spear$Contexto,levels=c('1','2','3'),labels=c("S/C", "Habitacional", "Funerario"))
spear$Conservación=factor(spear$Conservación,levels=c(1,2,3,4),labels=c("Excelente", "Bueno", "Regular", "Malo"))
spear$Remache=factor(spear$Remache,levels=c(1,2),labels=c("Sí", "No"))
spear$Materiales=factor(spear$Materiales,levels=c(1,2),labels=c("Bronce", "Hierro"))

#Ejercicio4
freq.mat=table(spear$Materiales)
View(freq.mat)
freq.con=table(spear$Contexto)
View(freq.con)
freq.cond=table(spear$Conservación)
View(freq.cond)

#Ejercicio5
cross.condcon=table(spear$Conservación,spear$Contexto)
cross.condcon
cross.condmat=table(spear$Conservación,spear$Materiales)
cross.condmat

#Ejercicio6
prop.mat=prop.table(freq.mat)
View(prop.mat)
prop.mat <- as.data.frame(prop.mat)
prop.mat$Porcentaje <- prop.mat$Freq*100
prop.mat

prop.con=prop.table(freq.con)
View(prop.con)
prop.con <- as.data.frame(prop.con)
prop.con$Porcentaje <- prop.con$Freq*100
prop.con

prop.cond=prop.table(freq.cond)
View(prop.cond)
prop.cond <- as.data.frame(prop.cond)
prop.cond$Porcentaje <- prop.cond$Freq*100
prop.cond

#Ejercicio7
prop.cross.condcon=round(prop.table(cross.condcon) * 100,0)
View(prop.cross.condcon)
prop.cross.condmat=round(prop.table(cross.condmat) * 100,0)
View(prop.cross.condmat)

#Ejercicio8
bar.cond=barplot(table(spear$Conservación))
bar.con=barplot(table(spear$Contexto))

#Ejercicio9
barh.mater=barplot(table(spear$Materiales), horiz=TRUE)
xlim <- c(0, 1.2*max())


#Ejercicio10
bar.cond= barplot(cross.condmat, width = 0,85, ylim=c(=0,sum(cross.condma))
                  main = "Estado de conservación vs. Materiales",
                  ylab = "Frecuencia",
                  legend=T)
barplot(tabla_materiales, tabla_conservacion,
        main = "Grafico de barras ampliado",
        xlab = "Materiales", ylab = "Conservacion",
        col = "yellow","green")
        

