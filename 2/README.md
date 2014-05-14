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

## 2.1 Tipos primitivos de datos ##

- Tipos enteros
- Tipos de número real
- Tipos de numeros complejos

### 2.1.1 Tipos enteros ###

El rango de los tipos enteros en tamaño es de al menos 8 bits hasta al menos 32 bits. El estándar C99 amplia este rango para incluir tamaños enteros de al menos 64 bits. Se puede utilizar tipos enteros para almacenar valores de numeros enteros (y el tipo de dato `char` para almacenar caracteres). Los tamaños y rangos listados para estos tipos son minimos; dependiendo en la plataforma de tu computadora, estos tamaños y rangos pueden ser mayores.

Mientras que estos rangos otorgan un orden natural, el estándar no requiere que cualquiera de los dos tipos tengan un rango diferente. Por ejemplo, es común para `int`y `long` tener el mismo rango. El estándar también permite que `signed char` y `long` tengan el mismo rango, aunque este tipo de plataformas son muy inusuales.

- `signed char`  
	El tipo de dato `signed char` de 8 bits puede almacenar valores enteros en el rango de -128 a 127.
- `unsigned char`  
	El tipo de dato `unsigned char` de 8 bits puede almacenar valores enteros en el rango de 0 a 255.
