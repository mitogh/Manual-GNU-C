# 2 Tipos de datos #

- [Tipos primitivos](#21-tipos-primitivos-de-datos)
- [Enumeraciones](#22-enumeraciones)
- [Uniones](#23-uniones)
- [Estructuras](#24-estructuras)
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
- [Tipos de números complejos](#213-tipos-de-n%C3%BAmeros-complejos)

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

Hay tres tipos de datos que representan a los números fraccionales. Mientras que los tamaños y los rangos de estos tipos son consistentes a través de la mayoría de los sistemas informáticos de hoy en día, históricamente los tamaños de estos tipos varian de sistema a sistema. Como tal, el valor mínimo y el máximo esta almacenado en definiciones de macro en la biblioteca de archivos de cabecera `float.h`. En esta sección, se incluyen nombres de las definiciones de los macros en lugar de sus posibles valores; revisa el archivo de tu sistema `float.h` para los números específicos.

- `float`
	El tipo de dato `float` es el más pequeño de los tres tipos de datos flotantes, si difieren en tamaño. Su valor mínimo esta almacenado en el `FLT_MIN`, y no debería ser mayor a `1e-37`. Su valor máximo está almacenado en `FLT_MAX`, y no debería ser menor a `1e37`.
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

Hay otras implicaciones sutiles de estas representaciones imprecisas; para más detalles, vea el papel de David Goldberg ` What Every Computer Scientist Should Know About Floating-Point Arithmetic` y la sección 4.2.2 de Donald Knuth `The Art of Computer Programming.`

===

### 2.1.3 Tipos de números complejos. ###

GCC introduce algunos tipos de números complejos como una extensión para C89. Características similares fueron introducidas en C99, pero hubo un número de diferencias. Primero describimos el estándar del tipo de los números complejos.

- [Tipos estándar de números complejos.](#2131-tipos-est%C3%A1ndar-de-n%C3%BAmeros-complejos)
- [Extensión de GNU para el tipo de números complejos.](#2132-extensi%C3%B3n-de-gnu-para-el-tipo-de-n%C3%BAmeros-complejos)


#### 2.1.3.1 Tipos estándar de números complejos. ####

Los números complejos fueron introducidos en C99. Hay tres tipos complejos:

- `float _Complex`
- `double _Complex`
- `long double _Complex`

Los nombres comienzan con un guión bajo y una letra en mayúscula para evitar conflictos con identificadores de programas existentes. De cualquier manera, el archivo de cabecera `<complex.h>` del estándar C99 introduce algunos macros que hacen más sencillos el uso de tipos complejos.

- `complex`
	Expande `_Complex`. Esto permite que una variable pueda ser declarada `double complex` lo cuál parece  un poco más natural.
- `I`
	Una constante de tipo `const float _Complex` con un valor imaginario generalmente referido como `i`.

El archivo de cabecera `<complex.h>` también declara un número de funciones para realizar cálculos de números complejos, por ejemplo las funciones `creal` y `cimag` quienes respectivamente regresan la parte real e imaginaria de un número `double complex`. También se proporcionan otras funciones, como se muestra en este ejemplo:

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

## 2.2 Enumeraciones ##

Una enumeración es un tipo de dato personalizado utilizado para almacenar valores de constantes enteras y hacer referencia a ellas por su nombre. De manera predeterminada, estos valores son de tipo `signed int`; de cualquier manera, puedes utilizar la opción del compilador GCC `-fshort-enums` hace que sea utilizado el menor entero posible. Ambos comportamientos conforman el estándar C89, pero mezclando el uso de estas opciones en el mismo programa puede producir incompatibilidades. 

- [Definiendo enumeraciones.](#221-definiendo-enumeraciones)
- [Declarando enumeraciones.](#222-declarando-enumeraciones)

===

### 2.2.1 Definiendo enumeraciones ###

Una enumeración se define utilizando la palabra clave `enum`, seguido por el nombre de la enumeración (es opcional), seguido por una lista de nombres constantes (separados por comas y encerradas por llaves), terminando con un punto y coma.

```
enum frutas{uva, cereza, limon, kiwi};
```

Ese ejemplo define una enumeración, `frutas` la cuál tiene cuatro constante con valores enteros, `uva, cereza, limón y kiwi` cuales valores son de manera predeterminada 0,1,2 y 3 respectivamente. También puedes especificar uno o más valores de manera explicita. 

```
enum mas_frutas { platano = -17, manzana, arandano, mango };
```

El ejemplo define a el plátano con -17 y los valores restantes son incrementados en 1: manzana es -16, arándano es -15 y mango es -14. A menos que se especifique otra cosa, el valor de una enumeración es igual a un valor más que el anterior (y el primer valor predeterminado es 0).

También puedes hacer referencia a el valor definido previamente en la misma enumeración.

```
enum todavia_mas_fruta { naranja, frambuesa, melocoton, ciruela = melocoton + 2};
```

En ese ejemplo, naranja es 0, frambuesa es 1, melocotón 2, ciruela es 4.

No se puede utilizar el mismo nombre de una enumeración 

===

### 2.2.2 Declarando enumeraciones ###

Puedes declarar variables del tipo enumeraciones tanto como cuando la enumeración es definida como después. Este ejemplo declara una variable, llamada `mi_fruta` del tipo `fruta`, todo en una sola sentencia:

```
enum fruta{platano, manzana, arandano, mango} mi_fruta;
```

Mientras que este ejemplo declara el tipo y la variable de manera separada.

```
enum fruta {platano, manzana, arandano, mango};
enum fruta mi_fruta;
```

(Por supuesto que no puedes declararlo de esa forma si no has nombrado a la enumeración).

Aunque dichas variables son considerabas del tipo enumeración, puedes asignarles cualquier valor que se puede asignar a una variable del tipo `int`, incluyendo valores de otras enumeraciones. Además, cualquier variable que puede ser asignada a un valor `int` puede ser asignado a un valor de una enumeración.

Sin embargo, no puedes cambiar los valoras en una enumeración una vez que hayan sido definidos; son valores constantes. Por ejemplo, esto no funcionaría. 

```
enum fruta {platano, manzana, arandano, mango};
banana = 15;  /* No puedes hacer esto */
```

Las enumeraciones son útiles en conjunto con la sentencia `switch`, por que el compilador te puede advertir si has fallado al manejar uno de los valores de la enumeración. Usando el ejemplo anterior, si tu código solo puede manejar `banana`, `manzana` y `mango` pero no `arándano`, GCC puede generar una advertencia.

===

## 2.3 Uniones ##

Una unión es un tipo de dato personalizado utilizado para almacenar muchas variables en el mismo espacio de memoria. Aunque se puede acceder a cualquiera de estas variables en cualquier momento, solo debes leer de una de ellas a la vez--la asignación de un valor a una de ellas sobrescribe el valor en las otras. 

- [Declarando uniones](#231-declarando-uniones)
- [Declarando variables uniones.](#232-declarando-variables-uniones)
- [Accediendo a los miembros de una unión.](#233-accediendo-a-los-miembros-de-una-uni%C3%B3n)
- [Tamaño de las uniones.](#234-tama%C3%B1o-de-las-uniones)

===

### 2.3.1 Declarando uniones ###

Una unión se define utilizando la palabra clave `union` seguido por la declaración de los miembros de la union, encerrada por llaves. La declaración de cada miembro de una unión es como normalmente se declara una variable--utilizando el tipo de dato seguido por uno o más nombres de variables separados por comas,y terminando con un punto y coma. La definición de una unión se termina con un punto y coma después de la llave de cierre.

También se debe incluir un nombre para la union entre la palabra clave `union` y la llave de apertura. Sintácticamente esto es opcional, pero si se deja fuera, no se puede hacer referencia a esa tipo de dato unión después (sin un `typedef`, mira la sentencia typedef).

Aquí hay un ejemplo de la definición de una unión simple para almacenar un valor entero y un valor de punto flotante:


```
union numeros
{
	int i;
	float f;
};
```

Eso define una unión llamada `numeros`, la cuál contiene dos miembros, `i` y `f`, las cuales son del tipo `int` y `float`, respectivamente.

===

### 2.3.2 Declarando variables uniones. ###

Puedes declarar variables del tipo unión tanto cuando en la inicialización de la unión y después de la definición, siempre y cuando le hayas dado un nombre al tipo unión.

- [Declarando variables unión en la definición.](#2321-declarando-variables-uni%C3%B3n-en-la-definici%C3%B3n)
- [Declarando variables unión después de la definición](#2322-declarando-variables-uni%C3%B3n-despu%C3%A9s-de-la-definici%C3%B3n)
- [Inicializando los miembros de la unión](#2323-inicializando-los-miembros-de-la-uni%C3%B3n)

===

#### 2.3.2.1 Declarando variables unión en la definición ####

Puedes declarar variables de un tipo unión cuando defines la unión colocando los nombres de las variables después de la llave de cierre de la definición de la unión, pero antes del punto y coma. Puedes declarar más de una variable separando los nombres con comas.

```
union numeros
{
	int i;
	float f;
}primer_numero, segundo_numero;
```

Ese ejemplo declara dos variables del tipo `union numeros`, `primer_numero` y `segundo_numero`

===

#### 2.3.2.2 Declarando variables unión después de la definición ####

Puedes declarar variables de una unión después de que hayas definido la unión utilizando la palabra clave `union` y el nombre que le hayas dado al tipo unión, seguido por uno o más nombres de variables separados por comas.

```
union numeros
{
	int i;
	float f;
};
union numeros primer_numero, segundo_numero;
```

Ese ejemplo declara dos variables del tipo `union numeros`, `primer_numero` y `segundo_numero`

===

#### 2.3.2.3 Inicializando los miembros de la unión ####

Puedes inicializar el primer miembro de una variable union cuando la declaras: 

```
union numeros
{
	int i;
	float f;
};
union numeros primer_numero = { 5 };
```
En ese ejemplo, el miembro `i` de `primer_numero` obtiene el valor 5. El miembro f se queda solo.

Otra forma de inicializar un miembro de una unión es especificando el nombre del miembro a inicializar. De esta forma, puedes inicializar cualquier miembro que se quiera, no solo el primero. Hay dos métodos que se pueden utilizar--ya sea el nombre del miembro con dos puntos y después su valor, como esto:

```
union numeros primer_numero = { f: 3.14159 };
``` 

o preceder el nombre del miembro con un punto y asignar el valor con el operador de asignación, como esto:

```
union numeros primer_numero = { .f = 3.14159 };
``` 

También se puede inicializar el miembro de la variable unión durante la definición.

```
union numeros
{
	int i;
	float f;
}primer_numero = { 5 };
```

===

### 2.3.3 Accediendo a los miembros de una unión ###

Se puede acceder a los miembros de una variable de una unión usando el operador de miembro. Se coloca le nombre de la variable unión en el lado izquierdo del operador, y el nombre del miembro en el lado derecho.

```
union numeros
{
	int i;
	float f;
};

union numeros primer_numero;
primer_numero.i = 5;
primer_numero.f = 3.9;
```

Observe en este ejemplo que se al darle un valor al miembro f  se remplaza el valor almacenado en el elemento i. 

===

### 2.3.4 Tamaño de las uniones ###

El tamaño de una unión es igual al tamaño de su miembro más largo. Considera el siguiente ejemplo de unión de esta sección:

```
union numeros
{
	int i;
	float f;
};
```

El tamaño del tipo unión es el mismo que `sizeof(float)`, por que el tipo `float` es más grande que el tipo `int`. Ya que todos los miembros de una unión ocupan el mismo espacio de memoria, el tamaño del tipo de dato unión no necesita ser lo suficientemente largo para almacenar la suma de sus tamaños; solo necesita ser lo suficientemente largo para almacenar al miembro más grande.

===

## 2.4 Estructuras ##

Una estructura es un tipo de dato definido por el programador integrado pro variables de otros tipos de datos (posiblemente incluyendo otros tipos de estructura).

- [Definiendo estructuras](#241-definiendo-estructuras)
- [Declarando variables de estructuras](#242-declarando-variables-de-estructuras)
- [Accediendo a los miembros de una estructura](#243-accediendo-a-los-miembros-de-una-estructura)
- [Campos de bits](#244-campos-de-bits)
- [Tamaño de las estructuras](#245-tama%C3%B1o-de-las-estructuras)

### 2.4.1 Definiendo estructuras ###

Una estructura se define utilizando la palabra clave `struct` seguido por los miembros de la estructura, encerrada por llaves. Cada miembro de la estructura se declara como normalmente se declara una variable--utilizando el topo de dato seguid por uno o más nombres de variables separados por comas, y terminando con un punto y coma. Para terminar la definición de la estructura se coloca un punto y coma después de la llave de cierre.

También se puede colocar un nombre para la estructura entre la palabra clave `struct` y la llave de apertura. Esto es opcional, pero si se deja fuera, no se puede hacer referencia al tipo de dato estructura después (sin un `typedef`, mira la sentencia typedef).

Aquí un ejemplo de la definición de una estructura simple para almacenar las coordenadas X y Y de un punto.

```
struct punto
{
  int x, y;
};
```

Eso define un tipo de estructura llamada `struct punto`, la cuál contiene dos miembros X y Y ambas del tipo `int`.

Las estructuras (y uniones) pueden contener instancias de otras estructuras y uniones,pero por supuesto no así mismas. Es posible para una estructura o un tipo unión contener un campo que sea un puntero a el mismo tipo (mira Tipos Incompletos).

===

### 2.4.2 Declarando variables de estructuras ###

Puedes declarar variables del tipo estructuras ya sea durante la definición inicial de la estructura y después de la definición, siempre que se le haya dado un nombre a la estructura.

- [Declarando variables de estructura en la definición](#2421-declarando-variables-de-estructura-en-la-definici%C3%B3n)
- [Declarando variables de estructura después de la definición](#2422-declarando-variables-de-estructura-despu%C3%A9s-de-la-definici%C3%B3n)
- [Inicializando miembros de la estructura](#2423-inicializando-miembros-de-la-estructura)

===

#### 2.4.2.1 Declarando variables de estructura en la definición ###

===

#### 2.4.2.2 Declarando variables de estructura después de la definición ###

===

#### 2.4.2.3 Inicializando miembros de la estructura ###

===

### 2.4.3 Accediendo a los miembros de una estructura ###

===

### 2.4.4 Campos de bits ###

===

### 2.4.5 Tamaño de las estructuras ###

===

