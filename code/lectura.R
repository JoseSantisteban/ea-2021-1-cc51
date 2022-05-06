

#lectura de datos
data = read.csv("hotel_bookings_miss.csv", sep = ",", header = TRUE, stringsAsFactors = FALSE)


#inspeccion de datos
summary(data)

#arreglar primera columna 
names(data)[1] = "hotel"



#convertir a factores
data$hotel = as.factor(data$hotel)
data$is_canceled = as.factor(data$is_canceled)

data$arrival_date_month = as.factor(data$arrival_date_month)

data$meal = as.factor(data$meal)
data$country = as.factor(data$country)
data$market_segment =as.factor(data$market_segment)
data$distribution_channel = as.factor(data$distribution_channel)
data$is_repeated_guest =as.factor(data$is_repeated_guest)

data$reserved_room_type = as.factor(data$reserved_room_type)
data$assigned_room_type = as.factor(data$assigned_room_type)

data$deposit_type = as.factor(data$deposit_type)
data$agent = as.factor(data$agent)
data$company = as.factor(data$company)

data$customer_type = as.factor(data$customer_type)

data$reservation_status = as.factor(data$reservation_status)




