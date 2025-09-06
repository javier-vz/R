# ===============================================================
# SESIÓN 2 - Tema 4: Introducción a regresión lineal simple
# Archivo: regresion_lineal.R
# Dataset utilizado: datos_mineria.csv
# ===============================================================

# 1. Cargar el dataset --------------------------------------------------

# Asegúrate de tener el archivo en la ruta correcta
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 2/datos_mineria.csv", encoding = "UTF-8")

# Convertimos las columnas necesarias
datos$Fecha <- as.Date(datos$Fecha)
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)

# 2. Visualizar la relación entre variables -----------------------------

# Diagrama de dispersión con línea de tendencia
plot(datos$Profundidad_m, datos$Producción_Ton,
     main = "Profundidad vs Producción (con tendencia)",
     xlab = "Profundidad (m)",
     ylab = "Producción (Toneladas)",
     col = "blue", pch = 19)

# Ajustamos modelo de regresión lineal
modelo <- lm(Producción_Ton ~ Profundidad_m, data = datos)

# Añadimos la línea de regresión
abline(modelo, col = "red", lwd = 2)

# 3. Interpretar el modelo ----------------------------------------------

# Resumen del modelo
summary(modelo)

# Comentario:
# - El coeficiente de 'Profundidad_m' indica cuánto se incrementa la producción por cada metro adicional de profundidad.
# - El valor de R-squared nos dice qué porcentaje de la variación en la producción se explica por la profundidad.

# 4. EJERCICIO:
# Ajusta otro modelo cambiando la variable independiente a 'Fecha' (requiere convertirla a numérica con as.numeric()).

# BONUS: Predicción -----------------------------------------------------

# Predicción para una profundidad de 500 metros
nueva_profundidad <- data.frame(Profundidad_m = 500)
predict(modelo, nueva_profundidad)

# EJERCICIO:
# ¿Qué producción se esperaría para una profundidad de 600 metros?

# ===============================================================
