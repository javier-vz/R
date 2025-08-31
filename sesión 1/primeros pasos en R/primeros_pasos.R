# -----------------------------------------
# 2. Primeros pasos en R
# -----------------------------------------

# ASIGNACIÓN DE VALORES -----------------------------------------
# En R, podemos asignar valores con "<-" o "="
a <- 5     # forma más común en R
b = 3      # también válido

# OPERACIONES BÁSICAS -----------------------------------------
# Realizamos operaciones aritméticas básicas con variables numéricas

suma <- a + b                # Suma: 5 + 3 = 8
resta <- a - b               # Resta: 5 - 3 = 2
multiplicacion <- a * b     # Multiplicación: 5 * 3 = 15
division <- a / b           # División: 5 / 3 ≈ 1.666
potencia <- a ^ b           # Potencia: 5^3 = 125
raiz_cuadrada <- sqrt(a)    # Raíz cuadrada: √5

# Mostramos los resultados usando print() y paste()
print(paste("Suma:", suma))
print(paste("Resta:", resta))
print(paste("Multiplicación:", multiplicacion))
print(paste("División:", division))
print(paste("Potencia:", potencia))
print(paste("Raíz cuadrada de a:", raiz_cuadrada))

# FUNCIONES BÁSICAS -----------------------------------------
# Creamos un vector con varios números usando la función c()
# "c" viene de "combine" y nos permite juntar varios elementos en una sola estructura
numeros <- c(4, 8, 15, 16, 23, 42)

# Aplicamos funciones básicas al vector
media <- mean(numeros)            # Promedio
suma_total <- sum(numeros)        # Suma total
logaritmo <- log(numeros)         # Logaritmo natural de cada número
redondeo <- round(3.14159, 2)     # Redondear pi a 2 decimales
valor_absoluto <- abs(-25)        # Valor absoluto de -25

# Mostramos los resultados
print(paste("Media:", media))
print(paste("Suma total:", suma_total))
print("Logaritmo de cada número:")
print(logaritmo)
print(paste("Redondeo de pi:", redondeo))
print(paste("Valor absoluto de -25:", valor_absoluto))

# EJERCICIOS SUGERIDOS PARA LOS ESTUDIANTES ----------------------
# 1. Cambia los valores de 'a' y 'b'. ¿Qué pasa con los resultados?
# 2. Crea un nuevo vector con otras edades y calcula la media.
# 3. Usa log10() en lugar de log() para calcular logaritmo en base 10.
