//
//  Swift Fundamentos
//
//  Created by Juan Carlos Pazos on May/22.
//

// MARK: 1- Expresiones, variables y constantes

/*
 馃敼 Una computadora s贸lo puede ejecutar c谩lculos matem谩ticos sencillos
 馃敼 Un lenguaje de programaci贸n permite escribir c贸digo, que es convertido
    por el compilador en instrucciones que el CPU puede ejecutar
 馃敼 Una computadora opera con n煤meros base 2 o binario
 馃敼 Xcode es una IDE para escribir c贸digo Swift (y Objective-C)
 馃敼 Un playground permite obtener una retroalimentaci贸n inmediata de c贸mo se
    est谩 ejecutando el c贸digo.
 馃敼 Para ingresar un comentario hay que ingresar // o /* */
 馃敼 Usa los comentarios para documentar tu c贸digo
 馃敼 Puedes usar print para obtener la informaci贸n en el 谩rea de depuraci贸n
 馃敼 Los operadores aritm茅ticos son:
        Suma: +
        Resta: -
        Multiplicaci贸n: *
        Divisi贸n: /
        Resto: %
 馃敼 Swift tiene funciones como min(), max(), squareRoot(), sin(), cos() y m谩s...
 馃敼 Las constantes y variables permiten dar un nombre a los datos
 馃敼 Una vez que declaras una constante (let), no se puede modificar. Las variables (var)
    se pueden cambiar siempre que se quiera.
 馃敼 Siempre da a tus constantes y variables nombres que tengas sentido.
 */

import UIKit

// Comentarios
// Un comentario no se ejecuta, son observaciones.

// Comentario en m煤ltiples l铆neas.

/* Esta es la primera l铆nea.
   Y otra..
   otra...
   y otra m谩s. */
 
// Impresi贸n de resultados
print("Hola, Bienvenido al playgroud Fundamentos de Swift")


// Operaciones aritm茅ticas
/// suma +   resta -   multiplicaci贸n *   divisi贸n /
2 + 6
10 - 2
2 * 4
24 / 3
2+6 /// se pueden ingresar sin espacios entre los operacodres y los valores
22/7
22.0 / 7.0 /// usando valores decimales
/// resto o modulo %  (lo que "sobra" de la divis贸n de 2 n煤meros)
28 % 10 /// % s贸lo funciona con n煤meros enteros
(28.0).truncatingRemainder(dividingBy: 10.0) /// cuando son n煤meros decimales

// Orden de los operadores
/// si se usan varios operadores se debe observar la precedencia: * / + -
/// y cuando se requiera un orden diferente usar parent茅sis
35 * 5 + 2 /// primero multiplica y despu茅s suma
35 * (5 + 2) /// primero suma y despu茅s divide
(8000 / (5 * 10)) - 32


// Funciones matem谩ticas
sin(45 * Double.pi / 180)
cos(135 * Double.pi / 180)
(2.0).squareRoot()
max(5, 10)
min(-15, -10)
max((2.0).squareRoot(), Double.pi / 2)

// Variables y constantes
/// una constante es un valor que no podr谩 ser modificado una vez definido
/// las constantes comienzan con let
/// = es el operador de asignaci贸n
/// para almacenar valores enteros se usa Int
let asientosDisponibles: Int = 120
print(asientosDisponibles)

/// para almacenar valores decimales se usa Double
/// tambien es posible usar Float cuando no se requiere mucha precisi贸n
let pi: Double = 3.14159

/// para almacenar valores que van a cambiar se usa var
var numeroHabitantes: Int = 444_200
numeroHabitantes = 0
numeroHabitantes = 1_350_000 /// puede escribirse 1350000 pero es m谩s dif帽icil de leer
print(numeroHabitantes)

/// nombres de constantes y variables
/// aunque es posible usar hasta emojis en el nombre
var 馃惐馃摎: Int = -1
print(馃惐馃摎)
/// no ser铆a una buena pr谩ctica
/// usar nombres descriptivos
/// comienzan con minuscula y siguen el estilo camel case
///     edadDeLaPersona numeroDePersonas valorPromedio
///  si alguna palabra es una abreviatura se mantiene la forma de la abreviatura
///     direccionURL
/// Came Case
var estaDisponible: Bool = true
///Snake case
var esta_disponible: Bool = true
/// Kebab case
/// var esta-Disponible: Bool = true
/// Pascal case
var EstaDIsponible: Bool = true

// Operaciones con valores
/// una de las operaciones m谩s frecuentes es aumentar o dismminuir un valor
var contador: Int = 0
/// es posible usar esto contador = contador + 1
/// pero la sintaxis corta es mejor
contador += 1
contador -= 1 /// tambi茅n se puede restar
contador *= 3 /// multiplicar
contador /= 2 /// y dvidir
print(contador)

// MARK: - Recursos
/*
 馃搶 Apple documentation
 https://developer.apple.com/swift/
 https://developer.apple.com/documentation/swift/swift_standard_library/
 馃搶 The Swift programming language
 https://docs.swift.org/swift-book/index.html
 https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
 https://docs.swift.org/swift-book/ReferenceManual/AboutTheLanguageReference.html
 */

// MARK: - Copyright
/*
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 Notwithstanding the foregoing, you may not use, copy, modify, merge, publish, distribute, sublicense, create a derivative work, and/or sell copies of the Software in any work that is designed, intended, or marketed for pedagogical or instructional purposes related to programming, coding, application development, or information technology.  Permission for such use, copying, modification, merger, publication, distribution, sublicensing, creation of derivative works, or sale is expressly withheld.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
