# -----------------------------------------
# 3. Tipos de datos en R
# -----------------------------------------

# Numéricos (numeric)
# Se usan para representar números con o sin decimales
x <- 42
y <- 3.14
print(paste("Clase de x:", class(x)))
print(paste("Clase de y:", class(y)))

# Texto o cadenas de caracteres (character)
# Se representan entre comillas
nombre <- "Analítica de Datos"
print(paste("Clase de nombre:", class(nombre)))

# Lógicos (logical)
# Representan valores VERDADERO o FALSO
es_mayor <- TRUE
es_menor <- FALSE
print(paste("Clase de es_mayor:", class(es_mayor)))

# Factores (factor)
# Se usan para representar variables categóricas (como niveles de respuesta, colores, etc.)
# Internamente se guardan como números, pero cada número representa una categoría con etiqueta
comidas <- factor(c("pasta", "arroz", "tacos"))
print("Niveles del factor comidas:")
print(levels(comidas))
print(paste("Clase de comidas:", class(comidas)))

# Fechas (Date)
# Se usan para representar fechas en formato calendario
fecha_hoy <- as.Date("2025-08-31")
print(paste("Clase de fecha_hoy:", class(fecha_hoy)))

# -----------------------------------------
# Ejercicios sugeridos
# -----------------------------------------

# 1. Crea una variable con tu edad y otra con tu nombre. Usa class() para verificar su tipo.

# 2. Crea un vector de 5 frutas favoritas como caracteres.

# 3. Usa factor() para representar tus tres comidas favoritas como variable categórica.

# 4. Crea una variable que diga si hoy es fin de semana (usa TRUE o FALSE).

# 5. Escribe una fecha especial para ti usando as.Date().
