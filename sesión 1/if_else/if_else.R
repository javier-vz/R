# -----------------------------------------
# 6. Control de flujo: if, else
# -----------------------------------------

# Leer el CSV (ajusta la ruta según tu carpeta)
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 1/csv/datos_ejemplo.csv", encoding = "UTF-8")

# Visualizamos el contenido para verificar
print(datos)

# -----------------------------------------
# EJEMPLO 1: if
# Verificar si el primer estudiante tiene más de 25 años
if (datos$Edad[1] > 25) {
  print(paste(datos$Nombre[1], "tiene más de 25 años"))
}

# -----------------------------------------
# EJEMPLO 2: if...else
# Evaluar si el segundo estudiante tiene puntaje mayor o igual a 80
if (datos$Puntaje[2] >= 80) {
  print(paste(datos$Nombre[2], "tiene buen puntaje"))
} else {
  print(paste(datos$Nombre[2], "necesita mejorar su puntaje"))
}

# -----------------------------------------
# EJEMPLO 3: if...else if...else
# Evaluar edad del tercer estudiante
edad3 <- datos$Edad[4]
nombre3 <- datos$Nombre[4]

if (edad3 > 30) {
  print(paste(nombre3, "es mayor de 30 años."))
} else if (edad3 == 30) {
  print(paste(nombre3, "tiene exactamente 30 años."))
} else {
  print(paste(nombre3, "es menor de 30 años."))
}

# -----------------------------------------
# EJERCICIO PROPUESTO 1:
# Verifica si el cuarto estudiante es de Lima
if (datos$Ciudad[4] == "Lima") {
  print(paste(datos$Nombre[4], "vive en Lima"))
} else {
  print(paste(datos$Nombre[4], "no vive en Lima"))
}

# -----------------------------------------
# EJERCICIO PROPUESTO 2:
# Verifica si el puntaje del quinto estudiante es mayor a 90
if (datos$Puntaje[5] > 90) {
  print(paste(datos$Nombre[5], "tiene un puntaje excelente"))
} else {
  print(paste(datos$Nombre[5], "no tiene puntaje excelente"))
}

