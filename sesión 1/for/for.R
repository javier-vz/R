# ---------------------------------------------
# 7. Bucles en R: Uso del bucle for con CSV
# ---------------------------------------------

# Cargamos el CSV con los datos de estudiantes
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 1/csv/datos_ejemplo.csv")

# Exploramos los datos
print("Contenido del archivo CSV:")
print(datos)

# ----------------------------------------------------
# Estructura básica de un bucle for
# ----------------------------------------------------
# La función nrow() devuelve el número de filas del data frame.
# Con 1:nrow(datos), estamos creando una secuencia que va de 1 hasta el número de estudiantes.
# El bucle recorre cada fila y accede a los valores por índice.

for (i in 1:nrow(datos)) {
  # Mostramos el nombre del estudiante
  print(paste("Estudiante:", datos$Nombre[i]))
}

# ----------------------------------------------------
# Ejemplo 1: Calcular la suma de los puntajes
# ----------------------------------------------------
suma_puntajes <- 0

for (i in 1:nrow(datos)) {
  suma_puntajes <- suma_puntajes + datos$Puntaje[i]
}

print(paste("La suma total de puntajes es:", suma_puntajes))

# ----------------------------------------------------
# Ejemplo 2: Contar cuántos estudiantes son de Lima
# ----------------------------------------------------
contador_lima <- 0

for (i in 1:nrow(datos)) {
  if (datos$Ciudad[i] == "Lima") {
    contador_lima <- contador_lima + 1
  }
}

print(paste("Cantidad de estudiantes de Lima:", contador_lima))

# ----------------------------------------------------
# Ejercicio sugerido:
# Mostrar un mensaje para cada estudiante según su puntaje
# Si el puntaje es mayor o igual a 90, imprimir que tiene alto rendimiento
# Si el puntaje es menor a 90, imprimir que tiene rendimiento regular
# ----------------------------------------------------

for (i in 1:nrow(datos)) {
  if (datos$Puntaje[i] >= 90) {
    print(paste(datos$Nombre[i], "tiene alto rendimiento."))
  } else {
    print(paste(datos$Nombre[i], "tiene rendimiento regular."))
  }
}

# ----------------------------------------------------
# Funciones útiles
# ----------------------------------------------------
# length(): número de elementos de un vector
print(paste("Número de columnas en el dataset:", length(datos)))

# seq(): crear una secuencia
print("Secuencia del 1 al 5 con paso de 1:")
print(seq(1, 5, by = 1))

# sum(): también se puede usar directamente
print(paste("Suma de puntajes con sum():", sum(datos$Puntaje)))

