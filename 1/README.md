# 1 Elementos léxicos #

Este capítulo describe los elementos léxicos que componen el código fuente C después del procesamiento previo. Estos elementos son llamadas *muestras*. Hay cinco tipos de muestras: palabras clave, identificadores, constantes, operadores y separadores. En ocasiones los espacioes en blanco son necesarios para separar las muestras, también son descritas en este capítulo. 

- Identificadores
- Palabras clave
- Constantes
- Operadores
- Separadores
- Espacios en blanco

## 1.1 Identificadores ##

Los identificadores son una secuencia de caracteres que se utilizan para denominar a las variables, funciones, nuevos tipos de dato y macros de preprocesador. Puede incluir letras, dígitos decimales y el guión bajo '_' en los identificadores.

El primer carácter de un identificador no puede ser un dígito. 

Las letras mayúsculas y minúsculas son diferentes, así que `foo` y `FOO` son dos identificadores diferentes. 

Cuando se utilizan extensiones GNU, también se puede incluir el carácter del signo dolar '$' en los identificadores.

---

## 1.2 Palabras clave ##

Las palabras clave son identificadores especiales reservados para uso como parte del lenguaje de programación en sí. No se pueden utilizar para cualquier otro propósito.

Esta es la lista de palabras clave reconosidas por ANSI C89:

```
auto break case char const continue default do double else enum extern
float for goto if int long register return short signed sizeof static
struct switch typedef union unsigned void volatile while
```

El ISO C99 agrega las siguientes palabras clave:

```
inline _Bool _Complex _Imaginary
```

Y las extensiones de GNU agregan estas palabras clave:

```
__FUNCTION__ __PRETTY_FUNCTION__ __alignof __alignof__ __asm
__asm__ __attribute __attribute__ __builtin_offsetof __builtin_va_arg
__complex __complex__ __const __extension__ __func__ __imag __imag__
__inline __inline__ __label__ __null __real __real__
__restrict __restrict__ __signed __signed__ __thread __typeof
__volatile __volatile__
```

Tanto en ISO C99 y C89 con las extensiones GNU, la siguiente también es reconozida como una palabra clave:

```
restrict
```
---

## 1.3 Constantes ##

Una constante es un valor numérico o un carácter literal, como 5 o 'm'. Todas las constantes son de un tipo de datos en particular, se puede especificar la conversión de tipos para especificar explícitamente el tipo de una constante o dejar que el compilador utilize el tipo predeterminado basado en el valor de la constante.

### 1.3.1 Constantes enteras ###

Una constante entera es una secuencía de dígitos, con un prefijo opcional para denotar la base del número. 

Si la secuencia de dígitos es precedidad por `0x` o `0X` (cero x o cero X), entonces la constante se considera que es hexadecimal (base 16). Los valores hexadecimales pueden utilizar los dígitos del 0 al 9, así como las letras 'a' a la 'f' y 'A' a la 'F'. Éstos son algunos ejemplos: 

```
0x2f
0x88
0xAB43
0xAbCd
0x1
```

Si el primer dígito es 0 (cero), y el siguiente caracter no es 'x' o 'X', entonces la constante es considera como octal (base 8). Los valores octales sólo pueden utilizar los digitos del 0 al 7, el 8 y 9 no se admiten. He aquí algunos ejemplos:

```
057
012
03
0241
```

En todos los demás cassos, la secuencia de dígitos es considerada como decimal (base 10). Los valores decimales sólo pueden utilizar los dígitos del 0 al 9. He aquí algunos ejemplos:

```
459
23901
8
12
```

Existen varios tipos de datos enteros, los enteros cortos, enteros largos, enteros con signo y enteros sin signo. Puedes forzar a una constante entera a ser de un tipo entero largo y/o sin signo, agregando una secuencia de uno o más letras al final de la constante.

```
u
U
    Tipos de entero sin signo.
```

```
l
L
    Tipo de entero largos.
```

Por ejemplo `45U` es una constante entera sin signo: `unsigned int`. También puedes combinar letras: `45UL` es una constante entera larga sin signo: `unsigned long int`. (Las letras pueden ser utilizadas en cualquier orden).

Ambos ISO C99 y las extensiones de GNU C agregan los tipos de entero largo largo: `long long int` y entero largo largo sin signo `unsigned long long int`. Tambien puedes utilizar dos 'L' para obtener una constante entera larga larga `long long int`; agregar una 'U' a eso y entonces tienes una constante larga larga sin signo `unsigned long long int`. Por ejemplo: `45ULL`.

---

### 1.3.2 Constantes de caracteres ###

Una constante de carácter es generalmente un solo carácter esta encerrado entre commillas simples, como `'Q'`. Una constante de carácter es de tip `int` de manera predeterminada. 

Algunos caracteres, como el propio carácter de comilla simple, no se pueden representar usando un solo carácter. Para representar este tipo de caracteres, hay varias "secuencias de escape" que puedas utilizar: 

```
\\
	Carácter de barra invertida.
\?
	Carácter de signo de interrogación.
\'
	Comilla simple
\"
	Comilla doble.
\a
	Alerta audible.
\b
	Carácter de retroceso.
\e
	Carácter <ESC>. (Esta es una extensión de GNU.) 
\f
	Avance de página.
\n
	Carácter de nueva linea.
\r
	Retorno de carro.
\t
	Tabulación horizontal.
\v
	Tabulación vertical.
\o, \oo, \ooo
	Número octal.
\xh, \xhh, \xhhh, ...
	Número hexadecimal.
```

Para utilizar cualquiera de estas secuencias de escape, encierra la secuancia entre comillas simples y tratalas como si fueran cualquier otro carácter. Por ejemplo, la letra m es 'm' y el carácter de nueva linea es '\n'.

La secuencia de escape del número octal es el carácter de barra invertida seguido por uno, dos o tres digitos octales (0 al 7). Por ejemplo, 101 es el octal equivalente de 65, el cuál es el carácter ASCII 'A'. Por lo tanto, el carácter constante '\101' es lo mismo que el carácter constante 'A'.

### 1.3.3 Constantes de números reales ###

Una constante de número real es un valor que representa un número fraccional (punto flotante). Consiste de una secuencia de dgitos que representan el parte entera del número ("todo"), un punto decimal y una secuencia de digitos que representa la parte fraccional. 

Cualquier parte puede ser omitida, la parte fraccional o la parte entera, pero no ambas. Aquí algunos ejemplos:

```
double a, b, c, d, e, f;
a = 4.7;
b = 4.;
c = 4;
d = .7;
e = 0.7;
```

En la tercera sentencia de asignación, la constante entera 4 es automaticamente convertida de un valor entero a un valor doble. 

Los números reales también ser seguidos por `e`o `E` y un exponente entero. El exponente puede ser negativo o positivo.

```
double x, y;
x = 5e2; 	/* x es 5 * 100 o 500.0) */
y = 5e-2;	/* y es 5 * (1 /100) o 0.05 */
```

Se pueden agregar letras al final de la constante de un número real, para hacerlo de un tipo en particular. Si agregas la letra F (o f) a una constante de número real, entonces el tipo es `float`. Si agregas la letra L (o l), entonces el tipo es `long double`. Si no se agrega ninguna letra, entonces el tipo es `double`. 