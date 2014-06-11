# 2 Tipos de datos #

- [Tipos primitivos](#21-tipos-primitivos-de-datos)
- Enumeraciones
- Uniones
- Estructuras
- Arreglos
- Punteros
- Tipos incompletos
- Calificadores de tipos
- Clase de especificadores de almacenamiento
- Renombrado de tipos

===

## 2.1 Tipos primitivos de datos ##

- [Tipos enteros](#211-tipos-enteros)
- [Tipos de número real](#212-n%C3%BAmeros-de-tipo-real)
- Tipos de números complejos

===

### 2.1.1 Tipos enteros ###

El rango de los tipos enteros en tamaño es de al menos 8 bits hasta al menos 32 bits. El estándar C99 amplia este rango para incluir tamaños enteros de al menos 64 bits. Se puede utilizar tipos enteros para almacenar valores de números enteros (y el tipo de dato `char` para almacenar caracteres). Los tamaños y rangos listados para estos tipos son mínimos; dependiendo en la plataforma de tu computadora, estos tamaños y rangos pueden ser mayores.

Mientras que estos rangos otorgan un orden natural, el estándar no requiere que cualquiera de los dos tipos tengan un rango diferente. Por ejemplo, es común para `int`y `long` tener el mismo rango. El estándar también permite que `signed char` y `long` tengan el mismo rango, aunque este tipo de plataformas son muy inusuales.

- `signed char`  
	El tipo de dato `signed char` de 8 bits puede almacenar valores enteros en el rango de -128 a 127.
- `unsigned char`  
	El tipo de dato `unsigned char` de 8 bits puede almacenar valores enteros en el rango de 0 a 255.
- `char`
	Dependiendo en tu sistema, el tipo de dato `char` esta definido con el mismo rango que el `signed char` o el tipo de dato `unsigned char` (sin embargo, hay tres tipos). Por convención debes usar el tipo de dato `char` específicamente para almacenar caracteres (como `m`), incluyendo las secuencias de escape (tal como `\n`).
- `short int`
	El tipo de dato `short int` de 16 bits puede almacenar valores enteros en el rango de −32,768 a 32,767.También se puede hacer referencia a este tipo de dato como `short`, `signed short int`, o `signed short`.
- `unsigned short int`.
	El tipo de dato `unsigned short int` de 16 bits puede almacenar valores enteros en el rango de 0 a 65,535. También se puede hacer referencia a este tipo de dato como `unsigned short`.
- `int`
	El tipo de dato `int` de 32 bits puede almacenar valores en el rago de −2,147,483,648 a 2,147,483,647. También se puede hacer referencia a este topo de dato como `unsigned short`.
- `unsigned int`
	El tipo de dato `unsigned int` de 32 bits puede almacenar valores en el rango de 0 a 4,294,967,295. También se puede hacer referencia a este tipo de datos simplemente como `unsigned`. 
- `long int`
	El tipo de dato `long int` de 32 bits puede almacenar valores enteros en el rango de al menos −2,147,483,648 a 2,147,483,647. (Dependiendo en tu sistema, este tipo de dato puede ser de 64 bits, en tal caso el rango es idéntico al del tipo de dato `long long int`). También se puede hacer referencia a este tipo de datos como `long`, `signed long int`, o `signed long`.
- `unsigned long int`
	El tipo de dato `unsigned long int` de 32 bits puede almacenar valores enteros en el rango de al menos 0 a 4,294,967,295. (Dependiendo en tu sistema, este tipo de dato podría ser de 64 bits, en ese caso el rango es idéntico al de tipo de dato `unsigned long long int`.) También se puede hacer referencia a este tipo de dato como `unsigned long`.
- `long long int`
	El tipo de dato `long long int` de 64 bits puede almacenar valores enteros en el rango de −9,223,372,036,854,775,808 a 9,223,372,036,854,775,807. También se puede hacer referencia a este tipo de dato como `long long, signed long long int o signed long long`. Este tipo no es parte de C89, pero es parte de ambos C99 y una extensión GNU C.
- `unsigned long long int`
	El tipo de dato `unsigned long long int`de 64 bits puede almacenar valores enteros en el rango de al menos 0 hasta 18,446,744,073,709,551,615. También se puede hacer referencia a este tipo de dato como `unsigned long long`. Este tipo no es parte de C89, pero es parte de ambos C99 y una extensión GNU C.

Algunos ejemplos de la declaración y definición de valores enteros:

```
int foo;
unsigned int bar = 42;
char quux = 'a';
```
La primera línea declara un entero llamado `foo` pero no define su valor; se ha quedado sin inicializar, y no se debe asumir ningún valor en particular.

===

### 2.1.2 Números de tipo real ###

Hay tres tipos de datos que representan a los números fraccionales. Mientras que los tamaños y los rangos de estos tipos son consistentes a través de la mayoría de los sistemas informáticos de hoy en día, historicamente los tamaños de estos tipos varian de sistema a sistema. Como tal, el valor mínimo y el máximo esta almacenado en definiciones de macro en la biblioteca de archivos de cabecera `float.h`. En esta sección, se incluyen nombres de las definiciones de los macros en lugar de sus posibles valores; revisa el archivo de tu sistema `float.h` para los números especificos.

- `float`
	El tipo de dato `float` es el más pequeño de los tres tipos de datos flotantes, si difiren en tamaño. Su valor mínimo esta alamacenao en el `FLT_MIN`, y no debería ser mayor a `1e-37`. Su valor máximo está almacenado en `FLT_MAX`, y no debería ser menor a `1e37`.
- `double`
	El tipo de dato `double` es al menos tan largo como el tipo de dato `float`,y podría ser más grande. Su valor mínimo está almacenado en `DBL_MIN` y su valor máximo esta almacenado en `DBL_MAX`.
- `long double`.
	El tipo de dato `long double` es al menos tan largo como el tipo de dato `float`,y podría ser más grande. Su valor mínimo está almacenado en  `LDBL_MIN`, y su valor máximo está almacenado en `LDB_MAX`.
	
Todos los tipos de dato flotante son con signo; por ejemplo tratar de usar `unsigned float`, causara un error en tiempo de compilación.

Algunos ejemplos de la declaración y definición de variables de números reales.
```
float foo;
double bar = 114.3943;
```

La primera linea declara un flotante llamado foo pero no define su valor; no se ha inicializado, y no se debe asumir ningún valor en particular.

Los números de tipo real proporcionados en C son de precisión finita,y en consecuencia,no todos los números reales pueden ser representados exactamente. Muchos sistemas informáticos que GCC compila para usar una representación binaria para los números reales, los números tales como, por ejemplo 4.2. Por esta razón, le recomendamos que considere no comparar números reales por una igualdad exacta con el operador ==, sino comprobar que los números reales se encuentra dentro de una tolerancia aceptable.

Hay otras implicaciones sutiles de estas representaciones impresisas; para más detalles, vea el papel de David Goldberg ` What Every Computer Scientist Should Know About Floating-Point Arithmetic` y la sección 4.2.2 de Donald Knuth `The Art of Computer Programming.`