# -----------------------------------------
# 4. Estructuras de datos básicas en R
# -----------------------------------------

# ----------------------
# 1. VECTORES
# ----------------------

# Un vector es una colección de elementos del mismo tipo.
# Se crea con la función c(), que significa "combinar" o "concatenar".

numeros <- c(10, 20, 30, 40, 50)
nombres <- c("Juan", "Ana", "Luis")
edades <- c(25, 30, 35)

# Mostrar los vectores
print(numeros)
print(nombres)
print(edades)

# Acceder a elementos por posición
print(numeros[1])     # Primer elemento
print(nombres[2:3])   # Segundo y tercer elemento

# ----------------------
# 2. LISTAS
# ----------------------

# Las listas pueden contener elementos de diferentes tipos.
# Cada elemento puede ser un número, texto, otro vector, etc.

persona <- list(
  nombre = "Carlos",
  edad = 28,
  gustos = c("fútbol", "música", "cine")
)

# Acceder a elementos de la lista
print(persona$nombre)
print(persona$gustos[1])  # Primer gusto

# ----------------------
# 3. DATA FRAMES
# ----------------------

# Un data frame es como una tabla de Excel: cada columna puede tener un tipo diferente.
# Es muy usado para trabajar con datos reales.

nombres <- c("Lucía", "Marco", "Elena")
edades <- c(22, 25, 30)
ciudades <- c("Lima", "Cusco", "Arequipa")

personas <- data.frame(
  Nombre = nombres,
  Edad = edades,
  Ciudad = ciudades
)

# Ver el data frame completo
print(personas)

# ----------------------
# 4. INDEXACIÓN CON CORCHETES []
# ----------------------

# [fila, columna]

# Ver la primera fila
print(personas[1, ])

# Ver la segunda columna
print(personas[, 2])

# Ver el valor en la fila 2, columna 3
print(personas[2, 3])

# ----------------------
# 5. ACCESO A COLUMNAS CON $ 
# ----------------------

# Para acceder directamente a una columna por su nombre:

print(personas$Nombre)    # Muestra todos los nombres
print(mean(personas$Edad))  # Promedio de edades

# ----------------------
# 6. EJERCICIO
# ----------------------

# Crear un data frame con tus comidas favoritas, precios y si son saludables

comidas <- data.frame(
  Plato = c("Lomo Saltado", "Ensalada", "Pollo a la brasa"),
  Precio = c(18.5, 12.0, 20.0),
  Saludable = c(FALSE, TRUE, FALSE)
)

# Mostrar todo el data frame
print(comidas)

# Ver solo los platos saludables
print(comidas[comidas$Saludable == TRUE, ])
