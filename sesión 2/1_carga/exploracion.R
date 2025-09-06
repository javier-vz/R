# --------------------------------------------
# SESIÓN 2 - Exploración de un Dataset Real
# Tema 1: Lectura y exploración inicial
# --------------------------------------------

# ----------------------
# 1. Lectura del dataset
# ----------------------

# Cargar el archivo CSV ubicado en la ruta absoluta (ajusta si es necesario)
# Asegúrate de que el archivo "datos_mineria.csv" esté en esta ubicación:
ruta <- "C:/Users/jvera/Documents/R/sesión 2/datos_mineria.csv"

# Leer el archivo
datos <- read.csv(ruta, stringsAsFactors = FALSE)

# --------------------------------
# 2. Exploración básica del dataset
# --------------------------------

# Mostrar las primeras filas del dataset
head(datos)

# Mostrar las últimas filas
tail(datos)

# Ver la estructura de los datos: tipos de columnas
str(datos)

# Resumen estadístico general (mínimo, máximo, media, etc.)
summary(datos)

# Dimensiones del dataset (filas y columnas)
dim(datos)

# Nombres de las columnas
names(datos)

# --------------------------------
# 3. Conversión de tipos de datos
# --------------------------------

# Asegurar que 'Zona' y 'Mineral' sean factores (categóricos)
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)

# Convertir la fecha al formato de fecha
datos$Fecha <- as.Date(datos$Fecha)

# Verificar que los cambios hayan surtido efecto
str(datos)

# ------------------------------
# 4. Revisión de datos faltantes
# ------------------------------

# Ver si hay valores faltantes
is.na(datos)

# Contar cuántos valores faltantes hay por columna
colSums(is.na(datos))

# --------------------------------------------------
# 🧠 EJERCICIOS PROPUESTOS (practicar después de leer)
# --------------------------------------------------

# EJERCICIO 1: ¿Cuáles son los 10 registros con mayor producción?
head(datos[order(-datos$Producción_Ton), ], 10)

# EJERCICIO 2: ¿Cuántos registros hay por zona?
table(datos$Zona)

# EJERCICIO 3: ¿Cuál es el promedio de profundidad por tipo de mineral?
aggregate(Profundidad_m ~ Mineral, data = datos, FUN = mean)

# EJERCICIO 4: Visualiza cuántas extracciones se hicieron en cada mes
# Requiere extraer el mes
datos$Mes <- format(datos$Fecha, "%Y-%m")
table(datos$Mes)

# EJERCICIO 5: Detecta si hay fechas duplicadas
duplicated(datos$Fecha)
sum(duplicated(datos$Fecha))
