# -----------------------------------------
# 5. Lectura de datos desde archivo CSV
# -----------------------------------------

# Para leer un archivo CSV, utilizamos la función read.csv()
# Puedes usar un archivo local o una URL

# Leer el archivo CSV (archivo local)
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 1/csv/datos_ejemplo.csv", header = TRUE, sep = ",")

# Mostrar las primeras filas del dataset
print("Primeras filas del dataset:")
head(datos)

# Mostrar las últimas filas del dataset
print("Últimas filas del dataset:")
tail(datos)

# Estructura del dataset: muestra tipo de cada columna
print("Estructura del dataset:")
str(datos)

# Resumen estadístico de todas las columnas
print("Resumen estadístico:")
summary(datos)

# Dimensiones del dataset
print(paste("Número de filas:", nrow(datos)))
print(paste("Número de columnas:", ncol(datos)))

# Ver nombres de columnas
print("Nombres de las columnas:")
print(colnames(datos))

# Renombrar columnas (por ejemplo, cambiar "Edad" por "Edad_en_anios")
colnames(datos)[colnames(datos) == "Edad"] <- "Edad_en_anios"

# Mostrar dataset con columnas renombradas
print("Dataset con columna renombrada:")
head(datos)
