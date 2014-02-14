1 Elementos lexicos
===================

Este capítulo describe los elementos léxicos que componen el código fuente C después del procesamiento previo. Estos elementos son llamadas *muestras*. Hay cinco tipos de muestras: palabras clave, identificadores, constantes, operadores y separadores. En ocasiones los espacioes en blanco son necesarios para separar las muestras, también son descritas en este capítulo. 

- Identificadores
- Palabras clave
- Constantes
- Operadores
- Separadores
- Espacios en blanco

1.1 Identificadores
--------------------

Los identificadores son una secuencia de caràcteres que se utilizan para denominar a las variables, funciones, nuevos tipos de dato y macros de preprocesador. Puede incluir letras, dígitos decimales y el guión bajo '_' en los identificadores.

El primer caràcter de un identificador no puede ser un dígito. 

Las letras mayusculas y minusculas son diferentes, así que `foo` y `FOO` son dos identificadores diferentes. 

Cuando se utilizan extensiones GNU, también se puede incluir el carácter del signo dolar '$' en los identificadores.

---

1.2 Palabras clave
------------------

Las palabras clave son identificadores especiales reservados para uso como parte del lenguaje de programación en sí. No se puede utilizar para cualquier otro propósito.

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
