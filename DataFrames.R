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


# SUBCONJUNTOS DE UN DATAFRAME, SUBSET()::
# el dataframe que poseo
gamers_dataframe
# subset()
calificados= subset(gamers_dataframe, victorias>=5)

calificados

# RBIND(), MERGE()
# Para combinar dataframes

# rbind(), los dataframes a combinar deben de tener las mismas variables

otros_gamers= data.frame(gamers=c("Papita", "Vann", "Snorlak", "Flipin"), 
                         victorias= c(2, 1, 5, 12), fechas= c(2019, 2018, 2018, 2017))
otros_gamers
# combino los dataframes en un nuevo dataframes

players = rbind(gamers_dataframe, otros_gamers)
players

# Merge() muestra los datos repetidos, para evitar ello debemos poner el parámetro all= TRUE

merge(gamers_dataframe, otros_gamers, all= TRUE) #sino se coloca el parámetro all, no mostraría ningún 
# dato dado que no existe observaciones repetidas.




