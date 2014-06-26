# 3 Expresiones y operadores #

- [Expresiones](#31-expresiones)
- [Operadores de asignación](#32-operadores-de-asignaci%C3%B3n)
- [Incremento y reducción]()

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
