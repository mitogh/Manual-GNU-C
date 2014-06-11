# 2 Tipos de datos #

- Tipos primitivos
- Enumeraciones
- uniones
- Estructuras
- Arreglos
- Punteros
- Tipos incompletos
- Calificadores de tipos
- Clase de especificadores de almacenamiento
- Renombrado de tipos

===

## 2.1 Tipos primitivos de datos ##

- Tipos enteros
- Tipos de número real
- Tipos de numeros complejos

===

### 2.1.1 Tipos enteros ###

El rango de los tipos enteros en tamaño es de al menos 8 bits hasta al menos 32 bits. El estándar C99 amplia este rango para incluir tamaños enteros de al menos 64 bits. Se puede utilizar tipos enteros para almacenar valores de numeros enteros (y el tipo de dato `char` para almacenar caracteres). Los tamaños y rangos listados para estos tipos son minimos; dependiendo en la plataforma de tu computadora, estos tamaños y rangos pueden ser mayores.

Mientras que estos rangos otorgan un orden natural, el estándar no requiere que cualquiera de los dos tipos tengan un rango diferente. Por ejemplo, es común para `int`y `long` tener el mismo rango. El estándar también permite que `signed char` y `long` tengan el mismo rango, aunque este tipo de plataformas son muy inusuales.

- `signed char`  
	El tipo de dato `signed char` de 8 bits puede almacenar valores enteros en el rango de -128 a 127.
- `unsigned char`  
	El tipo de dato `unsigned char` de 8 bits puede almacenar valores enteros en el rango de 0 a 255.
- `char`
	Dependiendo en tu sistema, el tipo de dato `char` esta definido con el mismo rango que el `signed char` o el tipo de dato `unsigned char` (sin embargo, hay tres tipos). Por convención debes usar el tipo de dato `char` especificamente para almacenar caracteres (como `m`), incluyendo las secuencias de escape (tal como `\n`).
- `short int`
	El tipo de dato `short int` de 16 bits puede almacenar valores enteros en el rando de −32,768 a 32,767.También se puede hacer referencia a este tipo de dato como `short`, `signed short int`, o `signed short`.
- `unsigned short int`.
	El tipo de dato `unsigned short int` de 16 bits puede almancenar valores enteros en el rago de 0 a 65,535. También se puede hacer referencia a este tipo de dato como `unsigned short`.
- `int`
	El tipo de dato `int` de 32 bits puede almacenar valores en el rago de −2,147,483,648 a 2,147,483,647. También se puede hacer referencia a este topo de dato como `unsigned short`.
- `unsigned int`
	El tipo de dato `unsigned int` de 32 bits puede almacenar valores en el rango de 0 a 4,294,967,295. También se puede hacer referencia a este tipo de datos simplemente como `unsigned`. 
- `long int`
	El tipo de dato `long int` de 32 bits puede almacenar vsalores enteros en el rango de al menos −2,147,483,648 a 2,147,483,647. (Dependiendo en tu sistema, este tipo de dato puede ser de 64 bits, en tal caso el rango es identico al del tipo de dato `long long int`). También se puede hacer referencia a este tipo de datos como `long`, `signed long int`, o `signed long`.
- `unsigned long int`
	El tipo de dato `unsigned long int` de 32 bits puede almacenar valores enteros en el rango de al menos 0 a 4,294,967,295. (Dependiendo en tu sistema, este tipo de dato podría ser de 64 bits, en ese caso el rango es identico al de tipo de dato `unsigned long long int`.) También se puede hacer referencia a este tipo de dato como `unsigned long`.
- `long long int`
	El tipo de dato `long long int` de 64 bits puede almacenar valores enteros en el rago de −9,223,372,036,854,775,808 a 9,223,372,036,854,775,807. También se puede hacer referencia a este tipo de dato como `long long, signed long long int o signed long long`. Este tipo no es parte de C89, pero es parte de ambos C99 y una extensión GNU C.
- `unsigned long long int`
	El tipo de dato `unsigned long long int`de 64 bits puede almacenar valores enteros en el rango de al menos 0 hasta 18,446,744,073,709,551,615. También se puede hacer referecia a este tipo de dato como `unsigned long long`. Este tipo no es parte de C89, pero es parte de ambos C99 y una extensión GNU C.

Algunos ejemplos de la declaración y definición de valores enteros:

```
int foo;
unsigned int bar = 42;
char quux = 'a';
```
La primera linea declara un entero llamado `foo` pero no define su valor; se ha quedado sin inicializar, y no se debe asumir ningún valor en particular.

===
