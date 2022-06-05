//
//  Swift Fundamentos
//
//  Created by Juan Carlos Pazos on Jun/22.
//

// MARK: 3 - Control de flujo

/*
 Flujo
 🔹 El tipo de dato Boolean se usa para representar verdadero o false
 🔹 Los operadores de comparación son
        Igual ==
        Diferente !=
        Menor que <
        Mayor que >
        Menor o igual <=
        Mayor o igal >=
 🔹 La lógica booleana (&& y ||) permite combinar comparaciones
 🔹 if sirve para tomar decisiones en base a una codición
 🔹 else y else-if en una sentencia if permiten extender las condiciones
 🔹 Es recomendable usar el operador ternario (a ? b : c) en vez de una sentencia if
 🔹 Las variables y constantes perteneces a cierto ámbito, y no pueden ser usadas más allá de este
 🔹 Un loop while ejecuta una tarea hasta que se cumple una condición
 🔹 Un loop repeat siempre ejecuta el loop al menos una vez
 🔹 La instrucción break permite salir del loop
 */

// Comparaciones
/// Swift usa el tipo Bool para guardar el valor cierto (true) o false (false)
let si: Bool = true
let no: Bool = false
/// usando type inference: let si = true

/// El tipo Bool se usa regularmente para establecer comparaciones
let esUnoIgualADos = (1 == 2)
/// === se llama operador de igualdad (equality operator)
let esUnoDiferenteDeDos = (1 != 2)
/// ! se llama operador de negaación
let tambienEsVerdadero = !(1 == 2)
let esUnoMayorQueDos = (1 > 2)
let esUnoMenorQueDos = (1 < 2)

/// Lógica boolena
let operadorY = true && true /// && es y
let operadorO = true || false /// || es o

let yVerdadero = 1 < 2 && 4 > 3
let yFalse = 1 < 2 && 3 > 4

let oVerdadero = 1 < 2 || 3 > 4
let oFalso = 1 == 2 || 3 == 4

let y_o = (1 < 2 && 3 > 4) || 1 < 4

// Igualdad de strings
let adivinar = "gato"
let perroEsIgualAGato = adivinar == "perro"

let orden = "gato" < "perro" /// también se puede comparar por orden alfabético

let emojis = "🐈" < "🐕" /// y tambièn funciona con emojis

var encenderFoco = true
encenderFoco.toggle() /// con toogle se cambia el estado de un boolean
encenderFoco.toggle()

/// Sentencias If
/// if permite que el programa ejecute una acción sólo si una condición se cumple
if 20 > 19 {
  print("Como 20 es mayor hay que imprimir esta línea")
}

let colorSeleccionado = "Verde"

if colorSeleccionado == "Azul" || colorSeleccionado == "Amarillo" {
  print("Seleccionaste el color azul o amarillo")
} else {
  print("Seleccionaste el color \(colorSeleccionado)")
}

let horasDelDia = 18
var tiempoDelDia = ""

if horasDelDia < 6 {
    tiempoDelDia = "Madrugada"
} else if horasDelDia < 12 {
    tiempoDelDia = "Mañana"
} else if horasDelDia < 13 {
    tiempoDelDia = "Mediodia"
} else if horasDelDia < 20 {
    tiempoDelDia = "Tarde"
} else if horasDelDia < 24 {
    tiempoDelDia = "Noche"
} else {
    tiempoDelDia = "Hora no válida"
}
print(tiempoDelDia)

/// Ambito (scope)
/// las variables son encapsuladas entre los paréntesis
var horasTrabajadas = 45

var cantidadPago = 0
if horasTrabajadas > 40 {
  let masDe40Horas = horasTrabajadas - 40
    cantidadPago += masDe40Horas * 50
    horasTrabajadas -= masDe40Horas
}
cantidadPago += horasTrabajadas * 25

print(cantidadPago)
///masDe40Horas sólo existe dentro de los paréntesis, si se intenta usar fuera de ellos se dará un error

/// Operador ternario
/// el operador ternario toma una condición y devuellve uno de dos valores, dependiend ode si la condición
/// es verdadera o falsa: (<ondición> ? <valor verdadero> : <valor falso>
let a = 5
let b = 10

/*
 para determinar el mínimo y máximo de estas dos varianles
 let min: Int
 if a < b {
   min = a
 } else {
   min = b
 }
 
 let max: Int
 if a > b {
   max = a
 } else {
   max = b
 }
 */
let min = a < b ? a : b /// o usando el operador ternario
let max = a > b ? a : b

/// Ciclos loop
/// un loop es una forma de ejecutar código varias veces
/// con while loop mientrás la condición sea cierta se ejecuta el código
/// por ejemplo mientras el valor de suma sea menor a 1000
var suma = 1
while suma < 1000 {
  suma = suma + (suma + 1)
}
print(suma)

///  en el loop repeat-while la condición es evalaida al final del loop.
suma = 1
repeat {
  suma = suma + (suma + 1)
} while suma < 1000
print(suma)

/// este loop no se ejecuta por lo que suma sigue en 1
suma = 1
while suma < 1 {
  suma = suma + (suma + 1)
}
print(suma)
/// pero al usar repeat, el loop se ejejcuta por lo que suma será 3
suma = 1
repeat {
  suma = suma + (suma + 1)
} while suma < 1
print(suma)

/// Salir de un loop - usar break para que en base a una codición se salga del loop
suma = 1
while true {
  suma = suma + (suma + 1)
  if suma >= 1000 {
    break
  }
}
print(suma)

// MARK: - Recursos
/*
 📌 Apple documentation
 https://developer.apple.com/swift/
 https://developer.apple.com/documentation/swift/swift_standard_library/
 📌 The Swift programming language
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
