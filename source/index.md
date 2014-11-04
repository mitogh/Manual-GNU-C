---
title: Manual de Referencia de GNU C
---
# Manual de Referencia de GNU C - [[Archivo Original]](https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html)#

## Tabla de contenidos ##

- [El manual de Referencia de GNU C](#el-manual-de-referencia-de-gnu-c)
- [Prefacio](#prefacio)
	- [Créditos](#cr%C3%A9ditos)
- [1 Elementos léxicos](1#1-elementos-l%C3%A9xicos)
    - [1.1 Identificadores](1#11-identificadores)
    - [1.2 Palabras clave](1#12-palabras-clave)
    - [1.3 Constantes](1#13-constantes)
    - [1.3.1 Constantes enteras](1#131-constantes-enteras)
    - [1.3.2 Constantes de caracteres](1#132-constantes-de-caracteres)
    - [1.3.3 Constantes de números reales](1#133-constantes-de-n%C3%BAmeros-reales) 
    - [1.3.4 Constantes de cadena](1#134-constantes-de-cadena)
    - [1.4 Operadores](1#14-operadores)
    - [1.5 Separadores](1#15-separadores)
    - [1.6 Espacios en blanco](1#16-espacios-en-blanco)
- [2 Tipos de datos](2#2-tipos-de-datos)
	- [2.1 Tipos primitivos de datos](2#21-tipos-primitivos-de-datos)
		- [2.1.1 Tipos enteros](2#211-tipos-enteros)
		- [2.1.2 Números de tipo real](2#212-n%C3%BAmeros-de-tipo-real)
		- [2.1.3 Tipos de números complejos.](2#213-tipos-de-n%C3%BAmeros-complejos)
			- [2.1.3.1 Tipos estándar de números complejos.](2#2131-tipos-est%C3%A1ndar-de-n%C3%BAmeros-complejos)
			- [2.1.3.2 Extensión de GNU para el tipo de números complejos](2#2132-extensi%C3%B3n-de-gnu-para-el-tipo-de-n%C3%BAmeros-complejos)
	- [2.2 Enumeraciones](2#22-enumeraciones)
		- [2.2.1 Definiendo enumeraciones.](2#221-definiendo-enumeraciones)
		- [2.2.2 Declarando enumeraciones.](2#222-declarando-enumeraciones)
	- [2.3 Uniones](2#23-uniones)
		- [2.3.1 Declarando uniones](2#231-declarando-uniones)
		- [2.3.2 Declarando variables uniones.](2#232-declarando-variables-uniones)
			- [2.3.2.1 Declarando variables unión en la definición.](2#2321-declarando-variables-uni%C3%B3n-en-la-definici%C3%B3n)
			- [2.3.2.2 Declarando variables unión después de la definición](2#2322-declarando-variables-uni%C3%B3n-despu%C3%A9s-de-la-definici%C3%B3n)
			- [2.3.2.3 Inicializando los miembros de la unión](2#2323-inicializando-los-miembros-de-la-uni%C3%B3n)
		- [2.3.3 Accediendo a los miembros de una unión.](2#233-accediendo-a-los-miembros-de-una-uni%C3%B3n)
		- [2.3.4 Tamaño de las uniones.](2#234-tama%C3%B1o-de-las-uniones)
	- [2.4 Estructuras](2#24-estructuras)
		- [2.4.1 Definiendo estructuras](2#241-definiendo-estructuras)
		- [2.4.2 Declarando variables de estructuras](2#242-declarando-variables-de-estructuras)
			- [2.4.2.1 Declarando variables de estructura en la definición](2#2421-declarando-variables-de-estructura-en-la-definici%C3%B3n)
			- [2.4.2.2 Declarando variables de estructura después de la definición](2#2422-declarando-variables-de-estructura-despu%C3%A9s-de-la-definici%C3%B3n)
			- [2.4.2.3 Inicializando miembros de la estructura](2#2423-inicializando-miembros-de-la-estructura)
		- [2.4.3 Accediendo a los miembros de una estructura](2#243-accediendo-a-los-miembros-de-una-estructura)
		- [2.4.4 Campos de bits](2#244-campos-de-bits)
		- [2.4.5 Tamaño de las estructuras](2#245-tama%C3%B1o-de-las-estructuras)
  - [2.5 Arreglos](2#25-arreglos)
    - [2.5.1 Declarando arreglos](2#251-declarando-arreglos)
    - [2.5.2 Inicializando Arreglos](2#252-inicializando-arreglos)
    - [2.5.3 Accediendo a los elementos del Arreglo](2#253-accediendo-a-los-elementos-del-arreglo)
    - [2.5.4 Arreglos multidimensionales](2#254-arreglos-multidimensionales)
    - [2.5.5 Arreglos como cadenas](2#255-arreglos-como-cadenas)
    - [2.5.6 Arreglos de uniones](2#256-arreglo-de-uniones)
    - [2.5.7 Arreglos de estructuras](2#257-arreglo-de-estructuras)
  - [2.6 Punteros](2#26-punteros)
    - [2.6.1 Declarando punteros](2#261-declarando-punteros)
    - [2.6.2 Inicialización de punteros](2#262-inicializaci%C3%B3n-de-punteros)
    - [2.6.3 Punteros a uniones](2#263-punteros-a-uniones)
    - [2.6.4 Punteros a estructuras](2#264-punteros-a-estructuras)
  - [2.7 Tipos incompletos](2#27-tipos-incompletos)
  - [2.8 Tipos de calificadores](2#28-tipos-de-calificadores)
  - [2.9 Clase de especificadores de almacenamiento](2#29-clase-de-especificadores-de-almacenamiento)
  - [2.10 Renombrado de tipos](2#210-renombrar-tipos)
- [3 Expresiones y Operadores](3#3-expresiones-y-operadores)
	- [3.1 Expresiones](3#31-expresiones)
	- [3.2 Operadores de asignación](3#32-operadores-de-asignaci%C3%B3n)
	- [3.3 Incremento y reducción](3#33-incremento-y-reducci%C3%B3n)
	- [3.4 Operadores aritméticos](3#34-operadores-aritm%C3%A9ticos)
  - [3.5 Conjugación compleja](3#35-conjugaci%C3%B3n-compleja)
  - [3.6 Operadores de comparación](3#36-operadores-de-comparaci%C3%B3n)
  - [3.7 Operadores lógicos](3#37-operadores-l%C3%B3gicos)
  - [3.8 Corrimiento de bits](3#38-corrimiento-de-bits)
  - [3.9 Operadores lógicos bit a bit](3#39-operadores-l%C3%B3gicos-bit-a-bit)
  - [3.10 Operadores de punteros](3#310-operadores-de-punteros)
  - [3.11 El operador sizeof](3#311-el-operador-sizeof)
  - [3.12 Conversion de tipos](3#312-conversion-de-tipos)
  - [3.13 Subindices de arreglos](3#313-subindices-de-arreglos)
  - [3.14 Llamadas a funciones como expresiones](3#314-llamadas-a-funciones-como-expresiones)
  - [3.15 El operador de coma](3#315-el-operador-de-coma)
  - [3.16 Expresiones de acceso a miembros](3#316-expresiones-de-acceso-a-miembros)
  - [3.17 Expresiones condicionales](3#317-expresiones-condicionales)
	
## El manual de referencia de GNU C ##

- [Prefacio](#prefacio)
- [Elementos léxicos](1#1-elementos-l%C3%A9xicos)
- [Tipos de datos](2#2-tipos-de-datos)
- Expresiones y operadores
- Sentencias
- Funciones
- Estructura del programa y alcance
- Programa de ejemplo
- Desbordamiento

## Prefacio ##

Este es un manual de referencia para el lenguaje C, aplicado por la colección de compiladores de GNU (GCC). En concreto los objetivos de este manual son: 

- El estándar 1989 ANSI C, comúnmente conocido como "C89"
- El estándar ISO 1999, comúnmente conocido como "C99", en la medida en que C99 es implementado por GCC
- El estado actual de las extensiones estándar de GNU C

Este manual describe C89 como su pauta. Características de C99 y extensiones de GNU están explícitamente etiquetadas como tales. 

De manera predeterminada, GCC compilará código como C89 más las extensiones de GNU-especificas. Mucho de C99 es soportado; 

El lenguaje C incluye un conjunto de directivas preprocesadas, las cuales son utilizadas para cosas como los macro para remplazar texto, compilación condicional e inclusión de archivos. Aunque normalmente se describe en un manual del lenguaje C, el preprocesador de GNU C se ha documentado a fondo en *El Procesador C*, un manual separado que cubre preprocesamiento para programas en C, C++ y Objective-C, así que no esta incluido aquí.

## Créditos ##

Colaboradores que han ayudado con escribir, editar, corrección de textos, ideas, composiciones tipográficas, o detalles administrativos incluyen a: Diego Andres Alvarez Marin, Nelson H. F. Beebe, Karl Berry, Robert Chassell, Antonio Diaz Diaz, Andreas Foerster, Denver Gingerich, Lisa Goldstein, Robert Hansen, Jean-Christophe Helary, Mogens Hetsholm, Teddy Hogeborn, Joe Humphries, J. Wren Hunt, Adam Johansen, Vladimir Kadlec, Benjamin Kagia, Bjorn Liencres, Steve Morningthunder, Aljosha Papsch, Matthew Plant, Richard Stallman, J. Otto Tennant, Ole Tetlie, Keith Thompson, T.F. Torrey, and James Youngman. Trevis Rothwell escribió la mayoría de los textos y  da  mantenimiento al proyecto.

Algunos ejemplos de programas están basados en algoritmos del libro *The Art of Computer Programming de Donald Knuth* de Donald Knuth.
