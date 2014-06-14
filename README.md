# Manual de Referencia de GNU C - [[Archivo Original]](https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html)#


## Tabla de contenidos ##

- [El manual de Referencia de GNU C](https://github.com/mitogh/Manual-GNU-C)
- [Prefacio](#prefacio)
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
