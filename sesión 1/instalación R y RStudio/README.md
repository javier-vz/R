## 1. Instalación y entorno de trabajo

### ¿Qué es R y para qué se utiliza?

R es un lenguaje de programación diseñado específicamente para análisis estadístico, visualización de datos y ciencia de datos. Es ampliamente utilizado por investigadores, analistas y científicos de datos en todo el mundo. R permite trabajar con datos, realizar cálculos complejos, construir modelos estadísticos y generar gráficos de alta calidad.

---

### Instalación de R y RStudio

#### 🔹 Opción 1: Instalación en tu computadora

1. **Instalar R**
   - Visita: [https://cran.r-project.org](https://cran.r-project.org)
   - Selecciona tu sistema operativo (Windows, macOS o Linux).
   - Descarga el instalador y sigue los pasos de instalación.

2. **Instalar RStudio**
   - Visita: [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
   - Descarga la versión gratuita de RStudio Desktop.
   - Instálalo como cualquier otro programa.

> 💡 R es el motor, RStudio es el entorno visual donde lo usamos de forma más cómoda.

#### 🔹 Opción 2: Usar RStudio Cloud (ahora Posit Cloud)

- Alternativa si no deseas instalar nada en tu computadora.
- Visita: [https://posit.cloud](https://posit.cloud)
- Crea una cuenta gratuita.
- Puedes crear proyectos y trabajar directamente en la nube.

---

### Interfaz de RStudio

Una vez abierto RStudio, verás cuatro paneles principales:

1. **Consola** (abajo a la izquierda): donde se ejecutan los comandos.
2. **Editor de scripts** (arriba a la izquierda): donde escribes y guardas tus programas.
3. **Entorno / Historial** (arriba a la derecha): variables creadas y comandos anteriores.
4. **Archivos / Plots / Ayuda / Paquetes** (abajo a la derecha): para navegar archivos, ver gráficos, acceder a ayuda, etc.

---

### Creación de scripts `.R` y buenas prácticas

- Un **script .R** es un archivo de texto donde se escribe código para ejecutar en R.
- Para crear uno nuevo:
  - Menú: `File > New File > R Script`
  - Guarda tu script con `Ctrl + S` o `File > Save As...`.

#### Buenas prácticas:
- Comentar tu código usando `#`.
- Guardar frecuentemente.
- Usar nombres de archivos descriptivos y sin espacios.
- Crear una carpeta de trabajo con todos los archivos del proyecto.

```r
# Ejemplo de script básico
a <- 5
b <- 3
suma <- a + b
print(suma)
