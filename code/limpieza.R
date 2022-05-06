sin_valor = function(x){
  sum = 0
  for (i in 1:ncol(x)) {
    cat("En la columna", colnames(x[i]), "total de valores NA:", colSums(is.na(x[i])), "\n" )
    
  }
}
sin_valor(data)


en_blanco =function(x){
  sum = 0
  for (i in 1:ncol(x)) {
    cat("En la columna", colnames(x[i]),"total de valores en blanco: ", colSums(x[i]==""),"\n")
    
  }
}

en_blanco(data)

#limpiamos los na y verificamos
data.clean = na.omit(data)
sin_valor(data.clean)

en_blanco(data.clean)


#identificamos datos atipicos de las variables que vamos a utilizar

boxplot(data.clean$children)
#los datos atipicos los cambiamos al maximo posible, que es 3
data.clean$children [data.clean$children > 4] = 3


summary(data.clean$adults)
table(data.clean$adults)
boxplot(data.clean$adults)

data.clean$adults [data.clean$adults > 5] = 5

boxplot(data.clean$babies)
table(data.clean$babies)
data.clean$babies [data.clean$babies > 2] = 2


summary(data.clean)

write.csv(data.clean, "hotel_bookings_clean.csv")

data.2016 = data.clean[data.clean$arrival_date_year == 2016, ]



