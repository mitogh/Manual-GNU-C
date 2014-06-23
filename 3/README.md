# 3 Expresiones y operadores #

- Expresiones

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
