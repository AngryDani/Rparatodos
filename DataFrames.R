# DATAFRAMES::

gamers= c("Angry", "Dani", "Oggy2000")
victorias= c(5, 3, 13)
fechas= c(2016, 2012, 2008)

# CREAR UN DATA FRAME::

gamers_dataframe <- data.frame(gamers,victorias,fechas)

gamers_dataframe


# Ver la estructura del DF

str(gamers_dataframe)

# Ver las variables del dataframe

names(gamers_dataframe)


# Acceso a la variables dentro de un dataframe

# dataframe[,"variable]

# dataframe[["variable]]

# dataframe$variable

# media()

mean(gamers_dataframe$victorias)




