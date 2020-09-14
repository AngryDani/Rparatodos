# asignado valores
# la C es de concatenar 
valores <- c(1,2,3,4,5)

# método assign

assign("notas", c(11,14,09,20))

# extracción de valores, al igual que python se usa []

valores[1] 

# extraccion de valores con condiciones:

notas[notas>=11]

# sucesiones: seq() <> range() - Python, a diferencia de python la última cifra es inclusiva 

seq(1,10) # python: list(range(1,5))

# repeticiones rep():

rep(1, 10) # lo que se va a repetir, cuántas veces se va a repetir
rep(notas, 2) #tambien puede repetir vectores
rep(seq(5), 3) # tambien se puede repetir secuencias

# FUNCIONES ALL() and ANY()

# ANY() Responde si existe AL MENOS UN NÚMERO QUE CUMPLA CON una condición (es cierta o no), según el vector:

any(notas>=11) # TRUE-> no todos jalaron, existen aprobados

# ALL() Responde si TODOS LOS NÚMEROS CUMPLEN CON LA CONDICIÓN PLANTEADA

all(notas>=11) # FALSE-> no todas las notas son mayores que 11, entonces, existe jalados


# NA and NULL

# NA es algo que no existe 
# NULL es algo vacío

# Los valores NA no permiten hacer ciertos cálculos estadísticos como la media: mean()
notas_na<- c(notas, NA) # agrego al vector notas 1 NA
mean(notas_na ): NA # al existir un valor NA me arroja el resultado también como NA, entonces:
mean(notas_na, na.rm = "True") # para eliminar los NA y permita hacer los cálculos 

# se puede operar cuando existe NULL y no lo cuenta como un objeto mas:
notas_null<- c(notas, NULL, NULL) #AGREGAMOS 2 NULL Y LA MEDIA NO VARÍA
mean(notas) # media: 13.5
mean(notas_null) # media: 13.5

# FILTROS and SUBSET()
# Filtros:
notas_aprobadas<- notas[notas>=11] # asignamos a una variable las notas aprobadas según la condición especificada
notas_aprobadas # [1] 11 14 20

# SUBSET(): Sirve como un filtro pero elimina automáticamente los NA
subset(notas_na, notas_na>=11) # :: [1] 11 14 20


# Función de selección WHICH() 

which(notas>=11) # Arroja los índices del vector que cumplen la condición
# :: [1] 1 2 4 --> índices

# FUNCIÓN ILELSE()

ifelse(notas>=11, "aprobado", "jalado") # :: [1] "aprobado" "aprobado" "jalado"   "aprobado"

ifelse(any(notas>=11), "Hay aprobados", "Todos están jalados") # :: [1] "Hay aprobados"


# FUNCIONES ÚTILES:: 

# MIN(VECTOR), MAX(VECTOR), sqrt(), unique()

# SORT(VECTOR) ORDENAR VECTORES DE MENOR A MAYOR:: decreasing= TRUE de Mayor a Menor

sort(notas, decreasing = TRUE)

# OTROS TIPOS DE VECTORES::

# Asignar valores de un vector a otro vector::

frutas <- c("manzana", "plátano", "uva")
precios <- c(1,1.5, 3)
# names() :: 
names(precios) <- frutas
precios

#  Clase de objetos:
# R es un lenguaje de programación orientada a Objetos::
# - Vectores
# - Matrices (arrays)
# - Factores
# - Listas
# - Data Frames (hoja de datos)
# - Funciones




