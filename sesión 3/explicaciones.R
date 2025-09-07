# ==========================================================================
# SESIÓN 3 - Fundamentos de modelos predictivos en R
# Archivo: explicaciones_modelos.R
# Uso: Archivo explicativo (no ejecuta código) con fines didácticos
# ==========================================================================

# ==============================================================
# ¿Qué es la regresión lineal?
# ==============================================================

# La regresión lineal es un modelo estadístico que permite predecir una 
# variable dependiente (respuesta) a partir de una o más variables independientes
# (predictoras). Asume una relación lineal entre las variables.

# En su forma más simple:
# Y = β0 + β1*X + ε
# Donde:
# - Y es la variable dependiente (por ejemplo: producción minera)
# - X es la variable independiente (por ejemplo: profundidad)
# - β0 es el intercepto
# - β1 es el coeficiente de regresión (pendiente)
# - ε es el error aleatorio

# ==============================================================
# ¿Qué es la regresión lineal múltiple?
# ==============================================================

# La regresión lineal múltiple permite incluir más de una variable predictora.
# Por ejemplo:
# Y = β0 + β1*X1 + β2*X2 + β3*X3 + ... + ε

# Esto permite modelar situaciones más complejas, como:
# Producción_Ton ~ Profundidad_m + Humedad + Tipo_de_Mineral + Zona

# Las variables categóricas (como 'Zona' o 'Mineral') deben ser convertidas a 
# factores para que R las procese correctamente como variables dummy.

# ==============================================================
# ¿Qué es un árbol de decisión?
# ==============================================================

# Un árbol de decisión es un modelo de predicción que divide el espacio de 
# características en regiones, haciendo preguntas del tipo:
# "¿La profundidad es mayor a 300 m?"

# Cada nodo representa una decisión sobre una variable, y las hojas representan 
# una predicción. Es fácil de interpretar visualmente.

# En R, usamos librerías como rpart o tree para construirlos.
# Permiten trabajar tanto con variables numéricas como categóricas.

# Son útiles para problemas donde hay interacciones no lineales entre variables.

# ==============================================================
# ¿Qué es Random Forest?
# ==============================================================

# Random Forest (Bosque Aleatorio) es un modelo de conjunto (ensemble) que 
# combina muchos árboles de decisión para mejorar la precisión y evitar el 
# sobreajuste (overfitting).

# Cada árbol se construye sobre una muestra aleatoria del dataset y usa un 
# subconjunto aleatorio de variables. Luego, se promedian las predicciones.

# Es robusto, maneja bien datasets ruidosos y permite evaluar la importancia
# de las variables.

# En R, lo implementamos con la librería randomForest.

# ==============================================================
# ¿Por qué son útiles estos modelos en minería?
# ==============================================================

# Permiten:
# - Predecir producción en base a condiciones geológicas.
# - Estimar la calidad de un yacimiento con base en características físicas.
# - Identificar variables clave que afectan el rendimiento minero.
# - Automatizar análisis exploratorios con visualizaciones claras.

# ==============================================================
# Siguiente paso:
# ==============================================================

# Aplicar cada uno de estos modelos en R usando el dataset: datos_produccion_mineria.csv
# y analizar los resultados usando métricas como R², RMSE y visualizaciones.

