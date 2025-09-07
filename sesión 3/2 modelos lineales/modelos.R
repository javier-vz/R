# ==========================================================================
# SESIÓN 3 - Tema 2: Modelos lineales en R (Regresión lineal múltiple)
# Archivo: tema2_modelos_lineales.R
# Dataset utilizado: datos_produccion_mineria.csv
# ==========================================================================

# 1. Cargar los datos -----------------------------------------------------
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 3/datos_produccion_mineria.csv", encoding = "UTF-8")

# Verificamos la estructura de los datos
str(datos)

# Convertimos variables categóricas a factores
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)
datos$Fecha <- as.Date(datos$Fecha)

# 2. Modelo de regresión lineal múltiple ----------------------------------
# Queremos predecir Producción_Ton a partir de otras variables disponibles

modelo <- lm(Produccion_Ton ~ Profundidad_m + Dureza_suelo + Costo_extraccion +
               Humedad_suelo + Temperatura_media + Mineral + Zona,
             data = datos)

# Resumen del modelo
summary(modelo)

# 3. Diagnóstico del modelo -----------------------------------------------

# Evaluamos supuestos con gráficos
par(mfrow = c(2, 2))
plot(modelo)
par(mfrow = c(1, 1))

# 4. Predicciones ---------------------------------------------------------

# Agregamos columna con predicciones
datos$Prediccion <- predict(modelo, newdata = datos)

# Visualizamos predicción vs. valor real
plot(datos$Produccion_Ton, datos$Prediccion,
     xlab = "Producción real (Ton)",
     ylab = "Predicción del modelo",
     main = "Producción real vs. predicha",
     col = "blue", pch = 19)
abline(0, 1, col = "red", lty = 2)

# 5. Evaluación del modelo ------------------------------------------------

# Calculamos el error cuadrático medio (RMSE)
rmse <- sqrt(mean((datos$Produccion_Ton - datos$Prediccion)^2))
cat("RMSE del modelo:", rmse, "\n")

# EJERCICIO:
# Elimina una de las variables (por ejemplo, Humedad_suelo) y observa cómo cambia el R² y el RMSE.

