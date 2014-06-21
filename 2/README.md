# 2 Tipos de datos #

- [Tipos primitivos](#21-tipos-primitivos-de-datos)
- [Enumeraciones](#22-enumeraciones)
- [Uniones](#23-uniones)
- [Estructuras](#24-estructuras)
- [Arreglos](#25-arreglos)
- [Punteros](#26-punteros)
- [Tipos incompletos](#27-tipos-incompletos)
- [Tipos de calificadores](#28-tipos-de-calificadores)
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

Puedes acceder a los miembros de una variable de una unión usando el operador de miembro. Se coloca le nombre de la variable unión en el lado izquierdo del operador, y el nombre del miembro en el lado derecho.

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

Eso define un tipo de estructura llamada `struct punto`, la cuál contiene dos miembros `X` y `Y` ambas del tipo `int`.

Las estructuras (y uniones) pueden contener instancias de otras estructuras y uniones,pero por supuesto no así mismas. Es posible para una estructura o un tipo unión contener un campo que sea un puntero a el mismo tipo ([mira Tipos incompletos](#28-tipos-de-calificadores)).

===

### 2.4.2 Declarando variables de estructuras ###

Puedes declarar variables del tipo estructuras ya sea durante la definición inicial de la estructura y después de la definición, siempre que se le haya dado un nombre a la estructura.

- [Declarando variables de estructura en la definición](#2421-declarando-variables-de-estructura-en-la-definici%C3%B3n)
- [Declarando variables de estructura después de la definición](#2422-declarando-variables-de-estructura-despu%C3%A9s-de-la-definici%C3%B3n)
- [Inicializando miembros de la estructura](#2423-inicializando-miembros-de-la-estructura)

===

#### 2.4.2.1 Declarando variables de estructura en la definición ###

Puedes declarar variables del tipo estructura cuando se define el tipo estructura colocando los nombres de las variables después de la llave de cierre de la estructura, pero antes del punto y coma final. Se pueden declarar más de un nombre separando los nombres con comas.

```
struct punto
{
  int x, y;
}primer_punto, segundo_punto;
```

Ese ejemplo declara dos variables del tipo `struct punto`, `primer_punto` y `segundo_punto`.

===

#### 2.4.2.2 Declarando variables de estructura después de la definición ###

Puedes declarar variables del tipo estructura después de la definición del tipo estructura utilizando la palabra clave `struct` y el nombre que le hayas dado al tipo estructura, seguido por uno o más nombres de variables separados por comas.

```
struct punto
{
  int x, y;
};
struct punto primer_punto, segundo_punto;
```

Ese ejemplo declara dos variables del tipo `struct punto`, `primer_punto` y `segundo_punto`.

===

#### 2.4.2.3 Inicializando miembros de la estructura ###

Se pueden inicializar los miembros del tipo estructura para que tengan ciertos valores cuando declaras las variables de la estructura.

Si no se inicializa una variable estructura, el efecto depende si tiene almacenamiento estático (ver Almacenamiento de especificados de clase) o no. Si es, miembros con tipos integrales son inicializados con 0 y miembros punteros son inicializados con NULL; de otro modo, el valor de los miembros de una estructura es indeterminado.

Una forma de inicializar una estructura es especificar en un conjunto de llaves y separadas por comas. Aquellos valores son asignados a los miembros de la estructura en el mismo orden que los miembros que son declarados en la definición de la estructura. 

```
struct punto
{
  int x, y;
};

struct punto primer_punto = {5, 10};
```

En ese ejemplo, el miembro `x` de `primer_punto` obtiene el valor 5, y el miembro `y` tiene el valor 10.

Otra forma de inicializar los miembros es especificar el nombre de los miembros a inicializar. De esta forma, puedes inicializar los miembros en cualquier orden que se guste, e incluso dejar algunas inicializadas. Hay dos métodos que pueden ser usados. El primer método en C99 y tiene una extensión C89 en GCC:

```
struct punto primer_punto = { .y = 10, .x = 5 };
```

También se puede omitir el punto y usar dos puntos en lugar de '=', aunque esto es una extensión de GNU C:

```
struct punto primer_punto = { y: 10, x: 5 };
```

También se pueden inicializar las variables de los miembros cuando se declara la variable en la definición de la estructura:

```
struct puntoy
{
  int x, y;
  char *p;
};

struct puntoy primer_puntoy = {5};
```

Aquí, `x`es inicializado con 5, `y` es inicializado con 0, y `p` es inicializado con NULL. La regla aquí es que `y`y `p` son inicializados como si fueran variables estáticas.

Aquí hay otro ejemplo que inicializa a los miembros de la estructura que son en si mismas variables estructura:

```
struct punto
{
  int x, y;
};
struct rectangulo
{
  struct punto superior_izquierdo, inferior_derecho;
};

struct rectangulo mi_rectangulo = { {0, 5}, {10, 0} };
```

Ese ejemplo define la estructura `rectangulo` que consiste de dos variables estructura `punto`. Luego declara una variable del tipo `struct rectangulo` y inicializa los miembros. Ya que sus miembros son variables de estructuras, se utiliza un conjunto de llaves extra al rededor de los miembros que pertenecen a las variables estructura `punto`. Sin embargo, las llaves extras no son necesarias; solo hace que el código sea más fácil de leer.

===

### 2.4.3 Accediendo a los miembros de una estructura ###

Puedes acceder a los miembros de una variable estructura utilizando el operador de acceso a los miembros. Se coloca el nombre de la variable estructura del lado izquierdo del operador, y el nombre del miembro en el lado derecho.

```
struct punto
{
  int x, y;
};

struct punto primer_punto;

primer_punto.x = 0;
primer_punto.y = 5;
```

También se puede acceder a los miembros de una variable estructura que es en si mismo una variable estructura.

```
struct rectangulo
{
  struct punto superior_izquierdo, inferior_derecho;
}

struct rectangulo mi_rectangulo;
mi_rectangulo.superior_izquierdo.x = 0;
mi_rectangulo.superior_izquierdo.y = 5;

mi_rectangulo.inferior_derecho.x = 10;
mi_rectangulo.inferior_derecho.y = 0;
```

===

### 2.4.4 Campos de bits ###

Se pueden crear estructuras con miembros enteros de tamaños no estándar, llamados `bit fields`. Esto se hace especificando un miembro entero (`int, char, long int`, etc) de forma común, y insertando dos puntos y el numero de bits que el miembro debe ocupar entre el nombre del miembro y el punto y coma.

```
struct carta
{
  unsigned int palo : 2;
  unsigned int valor_carta : 4;
}
```

Esa ejemplo define un tipo de estructura con dos campos de bits, `palo` y `valor_carta`, los cuales toman 2 bits y 4 bits, respectivamente, `carta` puede almacenar valores de 0 a 3, y `valor_carta` puede almacenar valores desde 0 hasta 15. Nota que estos campos de bits fueron declarados como `unsigned int`; si se hubieran declarado enteros, entonces sus rangos habrían sido desde -2 a 1, y desde -8 a 7 respectivamente. 


Más generalmente, el rango de un campo de bits sin signo de N bits es desde 0 hasta 2^N - 1, y el rango de un campo de un campo de bits con signo de N bits es desde -(2^N) / 2 hasta ((2^N) / 2) - 1.

Los campos de bits pueden ser especificados sin un nombre para controlar que bits son realmente utilizados dentro de la unidad que los contiene. Sin embargo, el efecto de esto no es muy portable y es raramente utilizado. También puedes especificar un campo de bits de tamaño 0, lo que indica que los campos de bits posteriores no los campos posteriores deben ser empaquetados en la unidad que contiene el campo de bit anterior. Esto no es igualmente útil en general.

===

### 2.4.5 Tamaño de las estructuras ###

El tamaño de un tipo estructura es igual a la suma del tamaño de todos sus miembros, posiblemente incluye relleno para hacer que el tipo de estructura para alinearlo a un limite de bytes en particular. Los detalles varían dependiendo la plataforma de la computadora, pero no sería atípico ver estructuras con relleno para alinearse en los limites de cuatro-o-ocho-bytes. Esto se hace con la finalidad de acelerar el acceso a la memoria de las instancias del tipo estructura.

Como una extensión de GNU, GCC permite estructuras sin miembros. Tales estructuras tienen un tamaño cero.

Si se desea omitir el relleno de un tipo estructura (lo cuál reducirá el acceso a la memoria), entonces GCC otorga multiples métodos para el empaquetado fuera. El método más fácil y sencillo es usar la opción del compilador `-fpack-struct`. Para más detalles en la omisión del empaquetado, por favor ver el manual GCC que corresponda a la versión de tu compilador.

===

## 2.5 Arreglos ##

Un arreglo es una estructura de datos que permite almacenar uno o más elementos consecutivamente en memoria. En C,los elementos del arreglo comienzan el índice en la posición zero no uno.

- [Declarando arreglos](#251-declarando-arreglos)
- [Inicializando Arreglos](#252-inicializando-arreglos)
- [Accediendo a los elementos del Arreglo](#253-accediendo-a-los-elementos-del-arreglo)
- [Arreglos multidimensionales](#254-arreglos-multidimensionales)
- [Arreglos como cadenas](#255-arreglos-como-cadenas)
- [Arreglos de uniones](#256-arreglo-de-uniones)
- [Arreglos de estructuras](#257-arreglo-de-estructuras)

===

### 2.5.1 Declarando arreglos ###

Un arreglo se declara especificando el tipo de dato para sus elementos, su nombre, y el número de elementos que puede almacenar. Aquí hay un ejemplo que declara un arreglo que puede almacenar diez enteros:

```
int my_arreglo[10];
```

Para código estándar C, el número de elementos en un arreglo debe ser positivo.

Como una extensión de GNU, el número de  elementos puede ser tan pequeña como cero. Los arreglos con longitud cero son útiles como el último elemento de una estructura que en realidad es una cabecera para un objeto de longitud variable.

```
struct linea
{
  int longitud;
  int contenido[0];
};

{
  struct linea *esta_linea (struct linea *)
    malloc(sizeof(struct linea) + esta_longitud);
    esta_linea -> longitud = esta_longitud;
}
```

Otra Extensión de GNU permite declarar el tamaño de un arreglo utilizando variables, en lugar de solo constantes. Por ejemplo, aquí hay una función que declara un arreglo utilizando el parámetro como número de elementos.

```
int
mi_funcion(int numero)
{
  int mi_arreglo[numero];
  ...
}
```

===

### 2.5.2 Inicializando Arreglos ###

Se pueden inicializar los elementos en un arreglo cuando se declara listando los valores iniciales, separados por comas en un conjunto de llaves. Aquí hay un ejemplo:

```
int mi_arreglo[5] = { 0, 1, 2, 3, 4 };
```

No tienes que inicializar explícitamente todos los elementos del arreglo. Por ejemplo, este código inicializa los primeros tres elementos como se especifica, y luego los últimos dos elementos a un valor predeterminado de cero.

```
int mi_arreglo[5] = { 0, 1, 2 };
```

Cuando se usa ya sea ISO C99, o C89 con las extensiones GNU, puedes inicializar los elementos del arreglo fuera de orden, especificando que índice del arreglo inicializar. Para hacer esto, incluye el índice del arreglo en corchetes, y opcionalmente el operador de asignación, antes del valor. Aquí esta un ejemplo:

```
int mi_arreglo[5] = { [2] 5, [4] 9};
```

O utilizando el operador de asignación:

```
int mi_arreglo[5] = { [2] = 5, [4] = 9 };
```

Ambos ejemplos son equivalentes a: 

```
in mi_arreglo[5] = { 0, 0, 5, 0, 9 };
```

Cuando se utilizan extensiones de GNU, se puede inicializar un rango de elementos del mismo valor, especificando el primero y ultimo indices, en la forma [primero] ... [ultimo]. Aquí un ejemplo:

```
int mi_arreglo[100] = { [0 ... 9] = 1, [10 ... 98] = 2, 3 };
```

Eso inicializa los elementos de 0 hasta 9 en 1, los elementos 10 hasta 98 en 2, y el elemento 99 en 3. (También se puede escribir explícitamente `[99] = 3'.) También nota que se deben dejar espacios en ambos lados de `'...'`.

Si inicializas cada elemento de un arreglo, entonces no necesitas especificar el tamaño; su tamaño está determinado por el número de elementos que inicializas. Aquí hay un ejemplo:


```
int mi_arreglo[] = { 0, 1, 2, 3, 4 };
```

Aunque esto no indica explícitamente que el arreglo tiene cinco elementos utilizando `mi_arreglo[5]`, se inicializan cinco elementos, por lo que es el número que tiene.

Alternativamente, que elementos inicializar, entonces el tamaño del arreglo es igual al número inicializado más alto, más uno. Por ejemplo:

```
int mi_arreglo[] = { 0, 1, 2, [99] = 99 };
```

En ese ejemplo, solo cuatro elementos son inicializados, pero el último elemento inicializado es el número 99, así que hay 100 elementos.

===

### 2.5.3 Accediendo a los elementos del Arreglo ###

Se puede acceder a los elementos del arreglo al especificar el nombre del arreglo, seguido por el índice del elemento, encerrado por corchetes. Recuerda que los elementos de un arreglo están numerados comenzando por cero. Aquí hay un ejemplo:

```
mi_arreglo[0] = 5;
```

Eso asigna el valor 5 a el primer elemento en el arreglo, en la posición cero. Se puede tratar a los elementos de un arreglo como variables individuales de cualquier tipo de dato que compone a el arreglo. Por ejemplo, si se tiene un arreglo de un tipo de dato estructura, se puede acceder a los elementos de la estructura así:

```
struct punto
{
  int x, y;
};

struct punto punto_arreglo[2] = { {4, 5}, {8, 9} };
punto_arreglo[0].x = 3;
```
===

### 2.5.4 Arreglos multidimensionales ###

Se pueden hacer arreglos multidimensionales, o "arreglos de arreglos". Esto se hace al agregar un par conjunto extra de corchetes y la longitud para cada dimensión adicional que quieres que tenga el arreglo. Por ejemplo, aquí esta una declaración para un arreglo de dos dimensiones que almacena cinco elementos en cada dimensión (un arreglo de dos elementos que consiste en arreglos de cinco elementos):

```
int dos_dimensiones[2][5] = { {1, 2, ,3, 4, 5}, {6, 7, 8, 9, 10} };
```

Arreglos multidimensionales son accedidos especificando el índice deseado en ambas dimensiones:

```
dos_dimensiones[1][3] = 12;
```

En nuestro ejemplo, `dos_dimensiones[0]` es en si mismo un arreglo. El elemento `dos_dimensiones[0][2]` es seguido por `dos_dimensiones[0][3]` no por `dos_dimensiones[1][2]`.

===

### 2.5.5 Arreglos como cadenas ###

Se pueden utilizar un arreglo de caracteres para almacenar una cadena (ver [Constantes de Cadenas](https://github.com/mitogh/Manual-GNU-C/blob/master/1#134-constantes-de-cadena)). El arreglo puede ser construido con signos o sin signo.

Cuando declaras un arreglo, se puede especificar el número de elementos que tendrá. Ese número será el máximo número de caracteres que deben estar en la cadena, incluyendo el caracter null utilizado para terminar la cadena. Si eliges esta opción, entonces no se tiene que inicializar el arreglo cuando se declara. Alternativamente, simplemente se puede inicializar un valor a el arreglo y su tamaño será exactamente suficientemente largo para almacenar cualquier cadena para inicializarlo.

Hay dos formas diferentes para inicializar un arreglo. Se puede especificar una lista de caracteres delimitados por comas encerradas por llaves, o se puede especificar una cadena literal encerrada por comillas dobles.

Aquí hay algunos ejemplos:

```
char blue[26];
char yellow[26] = { 'y', 'e', 'l', 'l', 'o', 'w', '\0'};
char orange[26] = "orange";
char gray[] = {'g', 'r', 'a', 'y', '\0'};
char salmon[] = "salmon";
```

En cada uno de estos casos, el caracter nulo `\0` es incluido al final de la cadena, incluso cuando no se indique expresamente. (Tenga en cuenta que si no se inicializa una cadena mediante un arreglo de caracteres individuales, entonces no se garantiza que el caracter nulo este presente. Podría ser, pero tal evento sería una casualidad, y no se debe confiar en ella.)

Después de la inicialización, no se puede asignar una nueva cadena literal a un arreglo utilizando el operador de *asignación*. Por ejemplo, esto *no funcionaria*:

```
char limon[26] = "natilla";
limon = "salsa de carne";     /* Falla! */
```

Sin embargo, hay funciones en la biblioteca GNU C que realiza operaciones (incluyendo el copiado) en en arreglos de cadena. También puedes cambiar un caracter a la vez, accediendo a los elementos individuales de la cadena como lo harías con cualquier otro arreglo:

```
char name[] = "bob";
name[0] = 'r';
```

Es posible que usted afirme explícitamente el número de elementos en un arreglo, y luego inicializarla utilizando una cadena que tenga más caracteres que los elementos del arreglo. Esto no es algo bueno. La cadena más grande no sobrescribe el tamaño especificado previamente del arreglo, y tendrás una advertencia en tiempo de compilación. Ya que el tamaño original se mantiene, cualquier parte de la cadena que exceda el tamaño original es escrita en una dirección de memoria para la cuál no fue asignada.

===

### 2.5.6 Arreglo de uniones ###

Se puede crear un arreglo de un tipo unión tal como se puede un arreglo de un tipo de dato primitivo.

```
union numeros
{
  int i;
  float f;
};
union numeros arreglo_numero[3];
```

Ese ejemplo crea un arreglo llamado `arreglo_numero` de 3 elementos de variables `union números`. También se pueden inicializar los primeros miembros de los elementos de un arreglo:

```
struct punto punto_arreglo[3] = { {3}, {4}, {5} };
```

Las grupo de llaves internas son opcionales.

Después de la inicialización todavía se puede acceder a los miembros de la unión en el arreglo utilizando el operador de acceso de miembro. Se coloca el nombre del arreglo y el número del elemento (encerrado por corchetes) a la izquierda del operador, y el nombre del miembro en la derecha.

```
union números arreglo_numero[3];
arreglo_numero[0].i = 2;
```

===

### 2.5.7 Arreglo de estructuras ###

Se puede crear un arreglo de tipo estructura tal como se puede crear un arreglo de un tipo de dato primitivo.

```
struct punto
{
  int x, y;
};
struct punto arreglo_punto[3];
```

Ese ejemplo crea un arreglo llamado `arreglo_punto` de 3 elementos de variables `struct punto`. También se pueden inicializar los elementos de un arreglo de estructura.

```
struct punto punto_arreglo[3] = { {2, 3}, {4, 5}, {6, 7} };
```

Así como cuando se inicializan las estructuras que contienen miembros de estructuras, las llaves interiores son opcionales. Pero si usas las llaves adicionales, entonces se pueden inicializar parcialmente algunas de las estructuras en el arreglo e inicializar completamente otras:

```
struct punto punto_arreglo[3] = { {2}, {4, 5}, {6, 7} };
```

En ese ejemplo, el primer elemento del arreglo solo tiene inicializado el miembro `x`. Por el agrupamiento de las llaves, el valor 4 es asignado a el miembro `x` del segundo elemento del arreglo, *no* al miembro `y` del primer elemento, como sería el caso sin el grupo de llaves.

Después de la inicialización, todavía se puede acceder a los miembros de la estructura en el arreglo utilizando el operador de accedo de miembro. Se coloca el nombre del arreglo y el número del elemento (encerrado por corchetes) a la izquierda del operador, y el nombre del miembro a la derecha.

```
struct punto punto_arreglo[3];
punto_arreglo[0].x = 2;
punto_arreglo[0].y = 3;
```

===

## 2.6 Punteros ##

Los punteros almacenan direcciones de memoria almacenadas en constantes o variables. Para cualquier tipo de dato, incluyendo ambos tipos primitivos y personalizados, se puede crear un puntero que almacene la dirección de memoria de una instancia de ese tipo. 

- [Declarando punteros](#261-declarando-punteros)
- [Inicialización de punteros](#262-inicializaci%C3%B3n-de-punteros)
- [Punteros a uniones](#263-punteros-a-uniones)
- [Punteros a estructuras](#264-punteros-a-estructuras)

===

### 2.6.1 Declarando punteros ###

Un puntero se declara especificando un nombre para él y un tipo de dato. El tipo de dato indica que tipo de variable el punteros almacenara en memoria.

Para declarar un puntero, se incluye el operador de indirección (ver Operadores de punteros) antes del identificador. Aquí esta la forma general de una declaración de un puntero:

```
tipo-dato * nombre;
```

El espacio en blanco no es significante al rededor del operador de indirección:

```
tipo-dato *nombre;
tipo-dato* nombre;
```

Aquí está un ejemplo de la declaración de un ejemplo que almacena la dirección de una variable `int`.

```
int *ip;
```

Debes ser cuidadoso: cuando se declaran multiples punteros en la misma sentencia, debes declarar cada uno como un puntero, utilizando el operador de indirección.

```
int *foo, *bar;   /* Dos punteros */
int *baz, quuz;   /* Un puntero y una variable entera */
```

===

### 2.6.2 Inicialización de punteros ###

Se puede inicializar un puntero la primera vez que se declara especificando una dirección variable para almacenar en el. Por ejemplo, el código siguiente declara una variable `int 'i'`, y un puntero que se inicializa con la dirección de 'i'.

```
int i;
int *ip = &i;
```

Se puede dar cuenta del uso del operador de dirección (ver Operadores de puntero), utilizado para obtener la dirección de memoria de una variable. Después de declarar un puntero, no se utiliza el operador de indirección con el nombre del puntero cuando se le asigna una nueva dirección a apuntar. Por el contrario, eso cambiará el valor de la variable a la que apunta, no el valor del puntero en si mismo. Por ejemplo:

```
int i, j;
int *ip = &i;   /* 'ip' ahora almacena la dirección de 'i' */
ip = &j;        /* 'ip' ahora almacena la dirección de 'j' */
*ip = &i;       /* 'j' ahora almacena la dirección de 'i' */
```

El valor almacenado en un puntero es un numero entero: una posición en el espacio de memoria de la computadora. Si usted está dispuesto a hacerlo, puede asignar valores explícitamente utilizando literales enteras, arrojándolos al tipo de puntero adecuado. Sin embargo, no recomendamos esta práctica a menos que usted necesite tener un control muy afinado sobre lo que es´ta almacenando la memoria, y sabe exactamente lo que esta haciendo. Es demasiado fácil sobreescribir accidentalmente algo que usted no tenia intención de hacer. La mayoría de los usos de esta técnica no  son portables

Es importante establecer que si no se inicializa un puntero con la dirección de un objeto existente, apuntara a nada en particular y hará que tu programa truene si se utiliza (formalmente, este tipo de cosas se llama *comportamiento indefinido*).

===

### 2.6.3 Punteros a uniones ###

Puedes crear un puntero a un tipo unión tal y como se puede un puntero a un tipo de dato primitivo.

```
union numbers
{
  int i;
  float f;
};
union numeros foo = {4};
union numeros *numero_ptr = &foo;
```

Ese ejemplo crea un nuevo tipo, `union numeros`, y declara (y inicializa su primer miembro) una variable de ese tipo llamada `foo`. Finalmente, declara un puntero del tipo `union numeros`, y le otorga la dirección de `foo`.

Puedes acceder a los miembros de una variable de union a través de un puntero, pero no se pueden utilizar más el operador regular de acceso a miembros. En su lugar, tienes que utilizar el operador de acceso indirecto a miembros (ver Expresiones de acceso a miembros). Continuando con el ejemplo anterior, el siguiente ejemplo cambiará el valor del primer miembro de `foo`:

```
numbero_ptr -> i = 450;
```

Ahora el miembro `i` en `foo`es 450.

===

### 2.6.4 Punteros a estructuras ###

Puedes crear un puntero a un tipo estructura tal y como se puede un puntero a un tipo de dato primitivo.

```
struct pescado
{
  float longitud, peso;
};
struct pescado salmon = {4.3, 5.8};
struct pescado *pescado_ptr = &salmon;
```

Ese ejemplo crea un nuevo estructura del tipo, `struct pescado`, y declara (y inicializa) una variable de ese tipo llamada `salmon`. Finalmente, declara un puntero al tipo `struct pescado`, y le otorga la dirección de `salmon`.

Puedes acceder a los miembros de una variable de estructura a través ed un puntero, pero no se pueden utilizar más el operador regular de acceso a miembros. En su lugar, tienes que utilizar el operador de acceso indirecto a miembros (Ver Expresiones de acceso a miembros). Continuando con el ejemplo anterior, el siguiente ejemplo cambiará los valores de los miembros de `salmon`:

```
pescado_ptr -> longitud = 5.1;
pescado_ptr -> peso = 6.2;
```

Ahora los miembros `longitud` y el `peso` en `salmon` son 5.1 y 6.2 respectivamente.

===

## 2.7 Tipos incompletos ##

Puedes definir estructuras, uniones, y enumeraciones sin listar sus miembros (o valores, en el caso de las enumeraciones). Haciendo eso resulta un tipo incompleto. No se pueden declarar variables de tipos incompletos, pero se pueden trabajar con punteros a esos tipos.

```
struct punto;
```

En algún momento más tarde en tu programa, quieras completar el tipo. Esto se hace como normalmente se haría:

```
struct punto
{
  int x, y;
};
```

Esta técnica es normalmente para listas enlazadas:

```
struct lista_enlazada_simple
{
  struct lista_enlazada_simple *siguiente;
  int x;
  /* Quizá otro miembro aquí */
};
struct lista_enlazada_simple *cabeza_de_lista;
```

## 2.8 Tipos de calificadores ##

Hay dos tipos de calificadores que puedes agregar al inicio de tu declaración de tu variable lo que cambiará como la variable puede ser accedida: `const` y `volatile`. 

`const` causa que la variable sea de solo lectura, después de su inicialización, su valor no debe ser cambiado.

```
const float pi = 3.14159f;
```

Además de ayudar a prevenir cambios accidentales de valor, la declaración de variables con `const` puede ayudar al compilador en la optimización de código. 

`volatile` le dice al compilador que la variable es explícitamente intercambiable, y accesos aparenteme inútiles de la variable (por ejemplo, a través de punteros) no pueden ser optimizados a la distancia. Usted puede utilizar las variables volátiles para almacenar los datos que se actualiza a través de devoluciones de llamada a funciones o manejadores de señal. Puntos de secuencia y de entrega de señal.o

```
volatile float temperaturaActual = 40.0;
```
