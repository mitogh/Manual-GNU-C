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
- [Tipos de números complejos](2#213-tipos-de-n%C3%BAmeros-complejos)

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

===

### 2.1.3 Tipos de números complejos. ###

GCC introduce algunos tipos de números complejos como una extensión para C89. Características similares fuerón introducidas en C99, pero hubo un número de diferencias. Primero describimos el estándar del tipo de los números complejos.

- [Tipos estándar de números complejos.](2#2131-tipos-est%C3%A1ndar-de-n%C3%BAmeros-complejos)
- [Extensión de GNU para el tipo de números complejos.](2#2132-extensi%C3%B3n-de-gnu-para-el-tipo-de-n%C3%BAmeros-complejos)


#### 2.1.3.1 Tipos estándar de números complejos. ####

Los números complejos fuerón introducidos en C99. Hay tres tipos complejos:

- `float _Complex`
- `double _Complex`
- `long double _Comples`

Los nombres comienzan con un guión bajo y una letra en mayuscula para evitar conflictos con identificadores de programas existentes. De cualquier manera, el archivo de cabecera `<complex.h>` del estándar C99 introduce algunos macros que hacen más sencillos el uso de tipos complejos.

- `complex`
	Expande `_Complex`. Esto perimte que una varible pueda ser declarada `double complex` lo cuál parece  un poco más natural.
- `I`
	Una constante de tipo `const float _Complex` con un valor imaginario generalmente referido como `i`.

El archivo de cabecera `<complex.h>` tambien declara un número de funciones para realizar cálculos de números complejos, por ejemplo las funciones `creal` y `cimag` quienes respectivamente regresan la parte real e imaginaria de un número `double complex`. También se proporcionan otras funciones, como se muestra en este ejemplo:

```
#include <complex.h>
#include <stdio.h>

void example(void)
{
	complex double z = 1.0 + 3.0 * I;
	printf("La fase es %f, el modulo es %f\n", carg(z), cabs(z));
}
```

===

#### 2.1.3.2 Extensión de GNU para el tipo de números complejos ####

GCC también introduce los tipos complejos como una extensión de GNU para C89, pero su escritura es diferente. Los tipos complejos de punto flotante en las extensiones de GCC C89 son:

- `__complex__ float`
- `__complex__ double`
- `__complex__ long double`

La extensión de GCC permite otros tipos complejos de floating-point, así que se pueden declarar tipos complejos de caracteres y tipos enteros; de echo `__complex__` puede ser utilizado con cualquier tipo de dato primitivo. No te vamos a dar una lista completa de todas las posibilidades, pero aqui hay algunos ejemplos:

- `__complex__ float`
	El tipo de dato `__complex__ float` tiene dos componentes: una parte real y una parte imaginaria, ambas son de tipo `float`.
- `__complex__ int`
	El tipo de dato `__complex__ int` también tiene dos componentes: una parte real y una parte imaginaria, ambas del tipo de dato `int`.
	
Para extraer la parte real de una expresión de tipo compleja, utiliza la palabra clave `__real__`, seguido de la expresión. Del mismo modo, utiliza `__imag__` para extraer la parte imaginaria.

```
__complex__ float a = 4 + 3i;

float b = __real__ a;	/* b ahora es 4 */
float c = __imag__ a;	/* c ahora es 3 */
```

Este ejemplo crea una variable `a` compleja de tipo flotante, define su parte real como 4 y la imaginaria como 3. Después la parte real es asignada a la variable flotante `b`, y la parte imaginaria es asignada a la variable flotante `c`.


===