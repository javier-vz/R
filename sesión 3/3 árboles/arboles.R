# ==========================================================================
# SESIÓN 3 - Tema 3: Árboles de decisión en R
# Archivo: tema3_arboles_decision.R
# Dataset utilizado: datos_produccion_mineria.csv
# ==========================================================================

# 1. Cargar librerías necesarias ------------------------------------------
# Si no tienes estos paquetes instalados, usa: install.packages("rpart") y "rpart.plot"
library(rpart)
library(rpart.plot)

# 2. Cargar los datos -----------------------------------------------------
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 3/datos_produccion_mineria.csv", encoding = "UTF-8")

# Verificamos la estructura
str(datos)

# Aseguramos que las variables categóricas sean factores
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)

# 3. Modelo de árbol de decisión ------------------------------------------
# Queremos predecir la clase de 'Mineral' a partir de variables numéricas y la zona

arbol_mineral <- rpart(Mineral ~ Profundidad_m + Produccion_Ton + Zona,
                       data = datos,
                       method = "class", # clasificación
                       control = rpart.control(cp = 0.01))  # cp controla la complejidad

# 4. Visualizar el árbol --------------------------------------------------

rpart.plot(arbol_mineral, 
           main = "Árbol de Decisión para clasificar el tipo de Mineral",
           extra = 104)  # muestra porcentajes y número de casos

# 5. Predicciones y evaluación --------------------------------------------

# Predicciones en los mismos datos
predicciones <- predict(arbol_mineral, datos, type = "class")

# Matriz de confusión
confusion <- table(Predicho = predicciones, Real = datos$Mineral)
print(confusion)

# Porcentaje de acierto
accuracy <- sum(diag(confusion)) / sum(confusion)
cat("Precisión del árbol de decisión:", round(accuracy * 100, 2), "%\n")

# 6. EJERCICIOS -----------------------------------------------------------

# EJERCICIO 1:
# Cambia la variable objetivo y prueba predecir 'Zona' en lugar de 'Mineral'

# EJERCICIO 2:
# Ajusta el parámetro cp para observar cómo cambia la complejidad del árbol

# EJERCICIO 3:
# Agrega nuevas variables predictoras (si están disponibles) para mejorar el modelo

