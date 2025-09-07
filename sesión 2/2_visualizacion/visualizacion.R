# ===============================================================
# SESIÓN 2 - Tema 2: Visualización básica en R
# Archivo: visualizacion_basica.R
# Dataset utilizado: datos_mineria.csv
# ===============================================================

# 1. Cargar el dataset --------------------------------------------------

# Ruta absoluta (ajusta si es necesario)
datos <- read.csv("C:/Users/jvera/Documents/R/sesión 2/datos_mineria.csv", encoding = "UTF-8")

# Verificamos que los datos se hayan cargado correctamente
head(datos)
str(datos)

# Convertimos columnas relevantes si es necesario
datos$Zona <- as.factor(datos$Zona)
datos$Mineral <- as.factor(datos$Mineral)
datos$Fecha <- as.Date(datos$Fecha)

# 2. Gráfico de barras: distribución por tipo de mineral -----------------

# Tabla de frecuencia
tabla_minerales <- table(datos$Mineral)

# Gráfico de barras
barplot(tabla_minerales,
        main = "Frecuencia de cada tipo de mineral",
        col = "orange",
        xlab = "Tipo de mineral",
        ylab = "Frecuencia")

# EJERCICIO 1:
# Cambia el color del gráfico y añade un borde negro a las barras.

# 3. Histograma: distribución de la profundidad --------------------------

hist(datos$Profundidad_m,
     main = "Distribución de la profundidad de perforación",
     xlab = "Profundidad (m)",
     col = "orange",
     border = "black")

# EJERCICIO 2:
# Cambia los intervalos de clases del histograma usando el parámetro 'breaks'.

# 4. Diagrama de dispersión: profundidad vs producción ------------------

plot(x = datos$Profundidad_m,
     y = datos$Producción_Ton,
     main = "Relación entre profundidad y producción",
     xlab = "Profundidad (m)",
     ylab = "Producción (Toneladas)",
     col = "black",
     pch = 19)

# EJERCICIO 3:
# Agrega color por tipo de mineral usando la función 'col = as.numeric(datos$Mineral)'

# 5. Correlación entre profundidad y producción --------------------------

# Calculamos la correlación (coeficiente de Pearson)
correlacion <- cor(datos$Profundidad_m, datos$Producción_Ton, use = "complete.obs")

# Mostramos el resultado
cat("Correlación entre profundidad y producción:", correlacion, "\n")

# EJERCICIO 4:
# ¿Qué indica el valor de correlación obtenido?
# ¿Es una relación fuerte, débil, positiva o negativa?

# 6. BONUS: Boxplot por zona --------------------------------------------

boxplot(Producción_Ton ~ Zona, data = datos,
        main = "Producción por zona",
        ylab = "Producción (Toneladas)",
        col = "lightpink")

# EJERCICIO 5:
# Cambia la variable del eje x a 'Mineral' en lugar de 'Zona'
