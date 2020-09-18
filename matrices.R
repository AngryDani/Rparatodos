# MATRICES::
# Es un vector con filas y columnas
# vector x:
x<- c(1:12)
# DIM() Asigna una nueva dimensión al vector acorde al número de elementos
dim(x) <- c(4,3) # 4 filas y 3 columnas

#MATRIX()
notas_update<- c(notas, 20, 11, 3, 8, 19, 16)

m_notas<- matrix(data=notas_update, nrow = 5, ncol = 2) # por defecto está ordenado por columas
m_notas
# ordenar por filas::
m_notas<- matrix(data=notas_update, nrow = 5, ncol = 2, byrow= TRUE)
m_notas

# Ubicar elemenetos en una matriz

m_notas[1,2] # [#fila, #columna] :: [1] 14

# Asignar un valor a una coordenada de la matriz::

m_notas[4,1] <- 9 # :: 3 -> 9
m_notas

# Asignar un nombre a las filas y columnas de la matriz
# rownames(matriz) <- c("fila1", "fila2", "fila3","fila4","fila5")

rownames(m_notas)<- c("Angry", "Dan", "Fuji", "Pepito", "YonoFui")
m_notas

# OPERACIONES CON MATRICES::

# Multiplicar matrices::
# matriz-1 % * % matriz-2

# FACTORES::
# Los factores se usan para trabajar con variables categóricas, es decir, 
#variables que tienen un conjunto fijo y conocido de valores posibles. 
#También son útiles cuando quieres mostrar vectores de caracteres en un orden no alfabético. 
#(https://es.r4ds.hadley.nz/factores.html)
# Un factores es vector que se usa para especificar una clasificación de componentes de
# otros vectores de la misma longitud 

usuarios <- c("AngryDani", "Oggy2000", "Sherlock", "Desconocido", "AngryDani", "Sherlock", "Desconocido",
              "Sherlock", "Sherlock")
# Convertir el vector en factor::
usuarios_factor <- as.factor(usuarios)
usuarios_factor # Me devuelve un FACTOR de los elementos NO REPETIDOS (únicos) del vector asignado
# Para contabilizar los elementos repetidos usamos TABLE()
table(usuarios_factor)

# Usuarios totales::

usuarios_total<- c("AngryDani", "Oggy2000", "Sherlock", "Desconocido", "asd123",
                   "JJDW", "OwO--")

# Quiero saber de los usuarios, cuántos usarios han ganado premios (usuarios)::

premios_usuarios<- factor(usuarios, levels = usuarios_total)
premios_usuarios
table(premios_usuarios)


# LISTAS
# crear una lista 
asesinos<- list(nombres= c("Damers", "Payasito", "El Sapito"), muertes= c(500, 900, 120))
# ingresar a los atributos de la lista medainte el signo dólar $ (1era forma)
asesinos$nombres
# (2da forma) con dobles corchetes Nombre_lista[["atributo"]]
asesinos[["nombres"]]

# DATAFRAMES::




















