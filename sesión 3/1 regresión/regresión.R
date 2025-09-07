# ===============================================================
# SESIÓN 3 - Tema 1: Regresión lineal simple en R
# Archivo: tema1_regresion_lineal_simple.R
# Dataset utilizado: datos_produccion_mineria.csv
# ===============================================================

# 1. Cargar el dataset --------------------------------------------------

# Ruta absoluta (ajusta según tu sistema)
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 3/datos_produccion_mineria.csv", encoding = "UTF-8")

# Verificamos la estructura de los datos
str(datos)
summary(datos)

# Convertimos columnas necesarias
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)
datos$Fecha <- as.Date(datos$Fecha)

# 2. Análisis visual de la relación entre variables ---------------------

# Gráfico de dispersión entre profundidad y producción
plot(x = datos$Profundidad_m,
     y = datos$Produccion_Ton,
     main = "Dispersión: Profundidad vs Producción",
     xlab = "Profundidad de perforación (m)",
     ylab = "Producción (Toneladas)",
     col = "darkblue",
     pch = 19)

# 3. Ajuste del modelo de regresión lineal ------------------------------

modelo <- lm(Produccion_Ton ~ Profundidad_m, data = datos)

# Mostramos los coeficientes del modelo
summary(modelo)

# Añadir la línea de regresión al gráfico
abline(modelo, col = "red", lwd = 2)

# 4. Evaluación del modelo ---------------------------------------------

cat("R² del modelo:", summary(modelo)$r.squared, "\n")

# 5. Interpretación -----------------------------------------------------

# El coeficiente asociado a 'Profundidad_m' indica cuánto aumenta la producción
# por cada metro adicional de perforación, manteniendo todo lo demás constante.

# EJERCICIO 1:
# ¿Qué significa el intercepto del modelo en este contexto?
# ¿Qué tan fuerte es la relación entre profundidad y producción?

# EJERCICIO 2:
# Cambia la variable independiente y prueba usar 'Dureza_suelo' en lugar de 'Profundidad_m'.

# BONUS: Guardar gráfico como imagen -----------------------------------

# png("regresion_simple.png", width = 800, height = 600)
# plot(x = datos$Profundidad_m,
#      y = datos$Produccion_Ton,
#      main = "Regresión lineal simple",
#      xlab = "Profundidad (m)",
#      ylab = "Producción (Ton)",
#      col = "darkgreen", pch = 19)
# abline(modelo, col = "red", lwd = 2)
# dev.off()
