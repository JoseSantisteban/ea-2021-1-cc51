
#a. Tipo de hotel que prefiere la gente

a = table(data$hotel)

#visualizacion

barplot(a)


#b. Aumento de la demanda con el tiempo

meses = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October",  "November", "December")

table(data.2016$arrival_date_month)

b = table(data.2016$arrival_date_year, factor(data.2016$arrival_date_month, levels= meses))

#visualizacion

barplot(b)




#c. Reservas con niños o bebes
table(factor(data.2016$arrival_date_month, levels= meses), data.2016$arrival_date_year)

e = table( data.2016$children | data.2016$babies )
 

 #visualizacion
 barplot(e, names = c("Sin menores", "Con menores"))
table(data.2016$children)
table(data.2016$babies)


#d. Cantidad de uso mensual de estacionamiento
table(data.2016$required_car_parking_spaces)

#visualizacion
f  = table( data.2016$required_car_parking_spaces, factor(data.2016$arrival_date_month, levels= meses))

barplot(f, legend =c(0, 1, 2, 3) ) 

#Cancelaciones mensuales

 g =table(data.2016$is_canceled, factor(data.2016$arrival_date_month, levels= meses))
 


#visualizacion
 g[2,]
 barplot(g, legend = c("No cancelado", "Cancelado"))
 barplot(g[2,])

