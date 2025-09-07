# ==========================================================================
# SESIÓN 3 - Tema 4: Random Forest en R
# Archivo: tema4_random_forest.R
# Dataset utilizado: datos_produccion_mineria.csv
# ==========================================================================

# 1. Cargar librerías -----------------------------------------------------
library(randomForest)

# 2. Cargar los datos -----------------------------------------------------
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 3/datos_produccion_mineria.csv", encoding = "UTF-8")

# Verificamos estructura
str(datos)

# Convertimos variables categóricas
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)

# 3. Entrenamiento del modelo Random Forest -------------------------------
# Objetivo: predecir Produccion_Ton a partir del resto de variables

set.seed(123)  # Para reproducibilidad

modelo_rf <- randomForest(
  Produccion_Ton ~ Profundidad_m + Dureza_suelo + Costo_extraccion +
    Humedad_suelo + Temperatura_media + Zona + Mineral,
  data = datos,
  importance = TRUE,
  ntree = 500
)

# 4. Evaluación del modelo ------------------------------------------------
print(modelo_rf)

# Importancia de variables
importance(modelo_rf)
varImpPlot(modelo_rf)

# 5. Predicciones ---------------------------------------------------------
datos$Pred_RF <- predict(modelo_rf, newdata = datos)

# Comparación visual entre valores reales y predichos
plot(datos$Produccion_Ton, datos$Pred_RF,
     xlab = "Producción real (Ton)",
     ylab = "Predicción (Random Forest)",
     main = "Producción real vs. predicción RF",
     col = "blue", pch = 19)
abline(0, 1, col = "red", lty = 2)

# 6. Evaluación numérica --------------------------------------------------
rmse_rf <- sqrt(mean((datos$Produccion_Ton - datos$Pred_RF)^2))
cat("RMSE (Random Forest):", rmse_rf, "\n")

# EJERCICIO:
# Cambia el número de árboles (ntree) a 100, 300 y 1000.
# ¿Cómo cambia el error y la importancia de variables?
