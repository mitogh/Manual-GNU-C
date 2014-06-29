# 3 Expresiones y operadores #

- [Expresiones](#31-expresiones)
- [Operadores de asignación](#32-operadores-de-asignaci%C3%B3n)
- [Incremento y reducción](#33-incremento-y-reducci%C3%B3n)
- [Operadores aritméticos](#34-operadores-aritm%C3%A9ticos)
- [Conjugación compleja](#35-conjugaci%C3%B3n-compleja)
- [Operadores de comparación](#36-operadores-de-comparaci%C3%B3n)
- [Operadores lógicos](#37-operadores-l%C3%B3gicos)

===

## 3.1 Expresiones ##

Una expresión consiste de al menos un operando y cero o más operadores. Los operandos son objetos como constantes, variables y llamadas a funciones que regresan valores. He aquí algunos ejemplos:

```
47
2 + 2
cosine(3.14159)   /* Pretendemos que esto regresa un valor de punto flotante */
```

Agrupamiento de subexpresiones con paréntesis

```
( 2 * ( ( 3 + 10 ) - ( 2 * 6 ) ) )
```

Las expresiones más internas son evaluadas primero. En el ejemplo anterior, `3 + 10` y `2 * 6` evalúan a `13` y `12` respectivamente. Entonces `12` se le restan de `13`, resultando en `1`. Finalmente, `1` es multiplicado por 2, resultando en 2. Los paréntesis más externos son opcionales.

Un operador especifica una operación a realizar sobre su operando (s). Los operandos pueden tener uno, dos o tres operandos, dependiendo del operador.

===

## 3.2 Operadores de asignación ##

Los valores de los operadores de asignación son almacenados en variables. C otorga diversas variaciones de operadores de asignación.

El operador estándar de asignación `=` simplemente almacena el valor de la derecha del operando en la variable especificada por el operando de la izquierda. Como el operador de asignación, el operando de la izquierda (comúnmente conocido como "lvalue") no puede ser una literal o valor constante.

```
int x = 10;k
float y = 45.12 + 2.0;
int z = (2 * (3 + function () ) );

struct foo {
  int bar;
  int baz;
}quux = {3, 4, 5};
```

Nota que, a diferencia de otros operadores de asignación descritos arriba, puedes utilizar el operador de asignación plano para almacenar valor de una tipo estructura.

Operadores de asignación compuestos realizan una operación que involucra tanto el operando de la izquierda y la derecha, y después asigna el resultado de la expresión al operando de la izquierda. Aquí esta la lista de los operadores compuestos de asignación, y una breve descripción de lo que realizan.

- `+=`  
  Suma los dos operandos juntos, y luego asigna el resultado de la suma en el operando de la izquierda.  
- `-=`  
  Resta el operando de la derecha de el operando de la izquierda, y luego asigna el resultado de la resta en el operando de la izquierda.  
- `*=`  
  Multiplica los dos operandos juntos, y luego asigna el resultado de la multiplicación en el operando de la izquierda.
- `/=`  
  Divide el operando de la izquierda entre el operando de la derecha, y asigna el resultado en el operando de la izquierda.  
- `%=`  
  Realiza una división modular en los dos operandos, y asigna el resultado de la división en el operando de la izquierda.  
- `<<=`  
  Realiza una operación de desplazamiento a la izquierda en el operando de la izquierda, pasando el número de bits especificado por el operando de la derecha, y asigna el resultado del corrimiento en el operando de la izquierda.  
- `>>=`  
  Realiza una operación de desplazamiento a la derecha en el operando de la izquierda, pasando el número de bits especificado por el operando de la derecha, y asigna el resultado del corrimiento en el operando de la izquierda.  
- `&=`  
  Realiza una operación de conjunción bit a bit en los dos operandos, y asigna el resultado de la operación en el operando de la izquierda.  
- `^=`  
  Realiza una operación de disyunción exclusiva bit a bit en los dos operandos, y asigna el resultado de la operación en el operando de la izquierda.  
-  `|=`  
  Realiza una operación de disyunción inclusiva bit a bit en los dos operandos, y asigna el resultado de la operación en el operando de la izquierda.  

Aquí está un ejemplo de la utilización de uno de los operadores de asignación compuestos:

```
x += y;
```

Ya que no hay efectos secundarios producidos por la evaluación de la variable x como una "lvalue", el código anterior produce el mismo resultado que:

```
x = x + y;
```

==

## 3.3 Incremento y reducción ##

El operador de incremento ++ agrega 1 a su operando. El operando debe ser cualquier variable de uno de los tipos de datos primitivos, un puntero o una variable de una enumeración. Se puede aplicar el operador de incremento antes o después de la operación. Aquí hay algunos ejemplos:

```
char w = '1';
int x = 5;
char y = 'B';
float z = 5.2;
int *p = &x;

++w;  /* w ahora es el caracter '2' (no el valor 2) */
x++;  /* x ahora es 6 */
++y;  /* y ahora es 'C' (en sistemas ASCII) */
z++;  /* z ahora es 6.2 */
++p;  /* p ahora es &x + sizeof(int). */
```

(Nota que el incremento en un puntero solo tiene sentido si tienes una razón para creer que el nuevo puntero será una dirección de memoria valida.)

El prefijo del incremento agrega 1 antes de que el operando sea evaluado. Un sufijo de incremento  agrega 1 después de la evaluación del operando. En los ejemplos anteriores, el cambio de la posición del operador no hará ninguna diferencia. Sin embargo hay casos hace alguna diferencia:

```
int x = 5;
printf("%d \n", x++);   /* Imprime x y después la incrementa */
/* x ahora es igual a 6 */
printf("%d \n", ++x);   /* Incrementa x y luego la imprime */ 
```

El resultado del ejemplo anterior es:

```
5
7
```

Igualmente, puedes restar 1 de un operando utilizando el operador de decremento:

```
int x = 5;
x--;        /* x ahora es 4 */
```

Los conceptos de la aplicación de prefijo y sufijo aplican también aquí como en el operador de incremento.

===

## 3.4 Operadores aritméticos ##

C otorga operadores para operaciones aritméticas estándar: suma, resta, multiplicación, y división, junto con división modular y negación. El uso de estos operadores es muy simple; aquí hay algunos ejemplos:

```
/* Suma */
x = 5 + 3;
y = 10.23 + 37.332;
quux_puntero = foo_puntero + bar_puntero;

/* Resta */
x = 5 - 3;
y = 10.23 - 37.332;
quux_puntero = foo_puntero - bar_puntero;
```

Se pueden sumar y restar punteros de la memoria, pero no se pueden multiplicar o dividir.

```
/* Multiplicación */
x = 5 * 3;
y = 10.23 * 37.332;
/* División */
x = 5 / 3;
y = 10.23 / 37.332;
```

La división entera de valores positivos trunca a cero, por lo que 5/3 es 1. Sin embargo, si alguno de los operandos es negativo, la dirección del redondeo esta definida por la implementación. Divisiones enteras con signo para información acerca del desbordamiento en la división entera con signo.

Puedes utilizar el operador de modulo % para obtener el residuo producido al dividir dos operandos. Se colocan los operandos en cada lado del operador, e importa que operando va en que lado: `3 % 5` y `5 % 3` no arrojan el mismo resultado. Los operandos deben ser expresiones de un tipo de dato primitivo.

```
/* División modular */
x = 5 % 3;
y = 74 % 47;
```

La división modular regresa el residuo producido después de realizar la división entera en los dos operandos. Los operandos deben ser de un de un tipo primitivo entero.

```
/* Negación */
int x = -5;
float y = -3.14159;
```

Si el operando que utilizas con el operador negativo es de un tipo de dato sin signo, entonces el resultado no puede tener negativos, si no que es el valor máximo del tipo de dato sin signo, menos el valor del operando.

Muchos sistemas utilizan dos complementos aritméticos, y en tales sistemas el valor más negativo de un tipo con signo puede almacenar más lejos de cero que muchos de los valores positivos. Por ejemplo, en una plataforma, este programa:

```
#include <limits.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
int x;
    x = INT_MAX;
    printf("INT_MAX  = %d\n", x);
    x = INT_MIN;
    printf("INT_MIN  = %d\n", x);
    x = -x;
    printf("-INT_MIN = %d\n", x);
    return 0;
}
```

Produce este resultado:

```
INT_MAX  = 2147483647
INT_MIN  = -2147483648
-INT_MIN = -2147483648
```

Trivialmente se puede aplicar un operador positivo a una expresión numérica:

```
int x = +42;
```

Se asume que los valores numéricos son positivos a menos que explícitamente sean negativos, así que este operador no tiene efecto en un la ejecución de un programa.

===

## 3.5 Conjugación compleja ##

Como una extensión de GNU, se puede utilizar el operador de conjugación compleja ~ para realizar conjugación compleja en su operando -- es decir, se invierte el signo de su parte imaginaria. El operando debe ser una expresión de un tipo de número complejo. Aquí esta un ejemplo:

```
__complex__ int x = 5 + 17i;

printf("%d \n", (x * ~x));
```

Ya que un número imaginario (a + bi) multiplicado por su conjugado es igual a a^2 + b^2, la sentencia `printf`de arriba imprimirá 314 que es igual a 25 + 289.

===

## 3.6 Operadores de comparación ##

Los operadores de comparación se utilizan para determinar como dos operandos están relacionados el uno del otro: son iguales a cada uno, el resultado es 1 o 0, significando verdadero o falso, respectivamente.

(En los siguientes ejemplos de código, las variables x e y representan las dos expresiones de tipos aritméticos, o punteros.)

El operador de igual == prueba sus dos operandos en igualdad. El resultado es 1 si los operandos son iguales, y 0 si los operandos no son iguales.

```
if (x == y)
  puts("x no es igual a y");
else
  puts("x no es igual a y");
```

El operador de desigualdad != prueba dos operandos por su desigualdad. El resultado es 1 si los operandos no son iguales, y 0 si los operandos son iguales.

```
if ( x != y )
  puts("x no es igual a y");
else
  puts("x no s igual a y");
```

Para comparar valores flotantes para una igualdad exacta o desigualdad puede producir resultados inesperados. [Números de tipo real](https://github.com/mitogh/Manual-GNU-C/blob/master/2#212-n%C3%BAmeros-de-tipo-real) para más información.

Puedes comparar la igualdad o desigualdad de punteros de funciones; la prueba compara si dos punteros apuntan a la misma función.

Más allá de la igualdad o desigualdad, hay operadores que puedes utilizar para probar si un valor es menor, o mayor que, menor o igual que, o mayor o igual que otro valor. Aquí hay algunos ejemplos de código para ejemplificar el uso de estas operaciones.

```
if (x < y)
  puts("x es menor que y");

if (x <= y)
  puts("x es menor o igual que y");

if (x > y)
  puts("x es mayor que y");

if (x >= y)
  puts("x es mayor o igual que y");

```

===

## 3.7 Operadores lógicos ##

Los operadores lógicos prueban el valor verdadero de un par de operadores. Cualquier expresión no cero es considerada verdadera en C, mientras una expresión que es evaluada a cero es considerada falsa. 

El operador lógico de conjunción && prueba si dos expresiones son verdaderas. Si la primera expresión es falsa, entonces la segunda expresión no es evaluada.

```
if((x == 5) && (y == 10))
  printf("x es 5 y y es 10");
```

El operador lógico de conjunción || prueba si al menos uno de las dos expresiones es verdadera. Si la primera expresión es verdadera, entonces la segunda expresión no es evaluada.

```
if((x == 5) || (y == 10))
  printf("x es 5 o y es 10");
```

Puedes agregar al inicio de una expresión lógica un operador de negación para invertir el valor verdadero.

```
if(!(x == 5))
  printf("x no es 5");
```

Ya que el segundo operando en pares de expresiones lógicas no siempre es evaluada, se puede escribir código con resultados un poco intuitivos.

```
if(foo && x++)
  bar();
```

Si `foo` es siempre cero, entonces no solo impedirá que `bar` no sea llamada, pero `x` no será incrementado. Si quieres incrementar `x` sin importar el valor de `foo`, lo debes hacer afuera de la expresión de conjunción.

===

