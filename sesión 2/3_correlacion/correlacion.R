# ===============================================================
# SESIÓN 2 - Tema 3: Correlación y relaciones entre variables
# Archivo: correlacion_variables.R
# Dataset utilizado: datos_mineria.csv
# ===============================================================

# 1. Cargar el dataset --------------------------------------------------

# Usamos una ruta absoluta. Modifica si tu ubicación del archivo es distinta
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 2/datos_mineria.csv", encoding = "UTF-8")

# Vemos las primeras filas para verificar la carga
head(datos)

# Convertimos tipos de datos donde sea necesario
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)
datos$Fecha <- as.Date(datos$Fecha)

# 2. Visualización de la relación entre dos variables -------------------

# Usamos un scatterplot (diagrama de dispersión)
# Profundidad vs Producción, coloreando por tipo de mineral

# Cada punto representa una observación (perforación)
plot(datos$Profundidad_m,
     datos$Producción_Ton,
     main = "Dispersión: Profundidad vs Producción",
     xlab = "Profundidad (m)",
     ylab = "Producción (Toneladas)",
     col = as.numeric(datos$Mineral), # Cada mineral con color diferente
     pch = 19)

# Agregamos una leyenda con los nombres de los minerales
legend("topright",
       legend = levels(datos$Mineral),
       col = 1:length(levels(datos$Mineral)),
       pch = 19)

# EJERCICIO 1:
# Cambia la forma de los puntos (parámetro 'pch') según la zona.

# 3. Matriz de correlación -----------------------------------------------

# Extraemos solo columnas numéricas para calcular correlaciones
numericas <- datos[, sapply(datos, is.numeric)]

# Verificamos qué columnas son numéricas
str(numericas)

# Calculamos matriz de correlación de Pearson
matriz_cor <- cor(numericas, use = "complete.obs")

# Mostramos la matriz
print(matriz_cor)

# EJERCICIO 2:
# ¿Qué pares de variables tienen correlaciones más altas? ¿Son positivas o negativas?

# 4. Visualización de la matriz de correlación --------------------------

# Para una visualización mejor, instalamos y usamos el paquete corrplot
# (Ejecuta solo una vez si no lo tienes instalado)
# install.packages("corrplot")

library(corrplot)

# Visualizamos la matriz de correlación con colores
corrplot(matriz_cor,
         method = "color",
         type = "upper",
         tl.col = "black",
         tl.cex = 0.8,
         addCoef.col = "black", # Muestra los coeficientes numéricos
         number.cex = 0.7,
         col = colorRampPalette(c("red", "white", "blue"))(200))

# EJERCICIO 3:
# Usa el argumento `type = "full"` para mostrar matriz completa.
# Interpreta qué variables tienen relaciones lineales más claras.

# 5. Análisis estadístico básico de la correlación ----------------------

# Calculamos la correlación puntual entre Profundidad y Producción
cor.test(datos$Profundidad_m, datos$Producción_Ton)

# Esto nos da:
# - Coeficiente de correlación (Pearson)
# - Valor p (significancia estadística)
# - Intervalo de confianza

# EJERCICIO 4:
# ¿La correlación obtenida es estadísticamente significativa?
# ¿Podemos decir que existe una relación lineal clara?

# 6. BONUS: Correlación por grupos (por mineral) ------------------------

# Podemos calcular correlaciones por tipo de mineral
niveles_mineral <- levels(datos$Mineral)

for (mineral in niveles_mineral) {
  subset_m <- subset(datos, Mineral == mineral)
  cat("Mineral:", mineral, "\n")
  cat("Correlación Profundidad - Producción:",
      cor(subset_m$Profundidad_m, subset_m$Producción_Ton, use = "complete.obs"), "\n\n")
}

# EJERCICIO 5:
# Compara las correlaciones por tipo de mineral.
# ¿En qué minerales hay una relación más clara entre profundidad y producción?

