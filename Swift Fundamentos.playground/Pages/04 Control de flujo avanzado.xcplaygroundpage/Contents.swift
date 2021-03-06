//
//  Swift Fundamentos
//
//  Created by Juan Carlos Pazos on Jun/22.
//

// MARK: 4 - Control de flujo avanzado

/*
 Flujo avanzado
 馃敼 Se pueden usar rangos para crear secuencias de enteros, incrementando de un valor a otro
 馃敼 Rangos cerrados son los que incluyen los valores inicial y final
 馃敼 Rangos medio abiertos incluyen el valor inical y terminan un valor antes del valor final
 馃敼 Los loos for permiten iterar por un rango
 馃敼 La instrucci贸n continue permite terinar la iteracci贸n actual y pasar al siguiente
 馃敼 La instrucci贸n switch se usa para decidir qu茅 c贸digo ejecutar en base al valor de una variable o constante
 馃敼 El porder de switch viene de lo que se conoce como "pattern matching para comparar valores usando reglas complejas
 */

// Rangos
/// Rango cerrado
let rangoCerrado = 0...5
/// los tres puntos indican que el rango es cerrado, y va de 0 a 5 (0, 1,2,3,4,5)
/// Rando medio abierto
let rangoMedioAboerto = 0..<5
/// este rango va de 0 a 4
/// los rangos siempre son incrementales, el segundo n煤mero siempre debe ser superior o igual al primero

// N煤meros aleatorios

while Int.random(in: 1...5) != 5 {
    /// Int.random genera un n煤mero aleatorio entre 1 y 5
    print("El n煤mero no es 5")
}

// Ciclos For
/// El cilo con For es quiz谩s el m谩s usado para ejecutar el c贸digo X n煤mero de veces
/// Comienza con la instrucci贸n for, seguido por el nombre de la constante del loop,
/// despu茅s la palabra clave in y finalmente el rango
let contador = 10
var suma = 0

for i in 1...contador {
    suma += i
    print(suma)
}

/// Si s贸lo se necesita hacer el loop cierto n煤mero de veces, no es necesario usar la constante
suma = 1
var ultimaSuma = 0

for _ in 0..<contador {
    /// el _ sirve para ignorar la constante
    let temporal = suma
    suma = suma + ultimaSuma
    ultimaSuma = temporal
    print(ultimaSuma)
}

// Continue
/// En ocasiones es necesario saltar un iteraci贸n en particular sin salir del loop.
/// Usar la instrucci贸n continue
suma = 0

for fila in 0..<8 {
    if fila % 2 == 0 {
        continue
    }
    
    for columna in 0..<8 {
        suma += fila * columna
        print(suma)
    }
}

// Switch
/// Con switch se ejecuta c贸digo diferente dependiendo del valor de una variable o constante.
let numero = 10

switch numero {
case 0:
    print("Cero")
default:
    print("No es cero")
}

switch numero {
case 10:
    print("Es 10")
default:
    break
}
/// usar break cuando no se desea hacer nada ya que los cases no se deben dejar vacios

let cadena = "Gato"

switch cadena {
case "Gato", "Perro":
    print("Es un animal dom茅stico")
default:
    print("No es un animal dom茅stico")
}

let horasDelDia = 18
var tiempoDelDia = ""

switch horasDelDia {
case 0, 1, 2, 3, 4, 5:
    tiempoDelDia = "Madrugada"
case 6...12:
    tiempoDelDia = "Ma帽ana"
case 13...19:
    tiempoDelDia = "Tarde"
case 20...23:
    tiempoDelDia = "Noche"
default:
    tiempoDelDia = "Hora no v谩lida"
}

print(tiempoDelDia)
/// si el switch evalua todos los valores posibles, no se necesita default

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
