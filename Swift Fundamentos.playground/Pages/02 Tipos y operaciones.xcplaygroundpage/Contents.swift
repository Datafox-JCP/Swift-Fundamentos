//
//  Swift Fundamentos
//
//  Created by Juan Carlos Pazos on May/22.
//

// MARK: 2- Tipos y operaciones

/*
 TIPOS
 🔹 Un tipo es un conjunto de valores y las operaciones que pueden usarse en estos datos en específico
 🔹 La conversión de tipos permite convertir valores de un tipo en otro
 🔹 La conversión de tipos es necesaria cuando se usa un operador (+, - , *, /)
    para operaciones aritméticas entre diferentes tipos
 🔹 La inferencia de tipo permite omitir el tipo cuando Swift ya sabe que tipo es
 🔹 Unicode es el estándar para asociar carácteres con números
 🔹 Un mapeo unitario en Unicode se conoce como "code point"
 🔹 Es posible combinar cadenas usando el operador de suma
 🔹 Pueden usarse tuples para agrupar datos de un mismo tipo
 🔹 Un tuple puede ser con o sin nombre. Se puede acceder por su número de
    índice para tuples sin sombre o por los nombres asignados por el
    desarrollador para tuples con nombre
 🔹 Hay varios tipos numéricos con capacidades de almacenamiento y precisión
    diferentes
 🔹 Type aliases pueden utilizarse para crear un nuevo tipo que es sólo
    un nuevo nombre para otro tipo
 🔹 Los protócolos son la forma en que Swift organiza los tipos y describen
    las operaciones que los tipos comparten
 */

// Conviertiendo tipos de datos
let cuotaPorHora: Double = 19.5
let horasTrabajadas: Int = 10
/// let costoTotal: Double = cuotaPorHora * horasTrabajadas   - Cannot convert value of type 'Int' to expected argument type 'Double'
/// una operación entre un tipo entero y un decimal no se puede realizar, hay que convertir uno de ellos
let costoTotal: Double = cuotaPorHora * Double(horasTrabajadas)
print(costoTotal)

// Type inference
/// Swift "deduce" el tipo de datos en base al valor ingresado
let soyUnEntero = 42 /* Type = Int */
let soyUnDoble = 3.14159 /* Type = Double */
let soyUnString = "21 Lecciones para el siglo XXI"
/// para que una variable sea de un tipo específico
let quieroSerDoble = Double(13)
let yoTambienSereDoble = 13 as Double
/// en las líneas anteriores a pesar de 1ue 13 es un entero la constante será del tipo Double

// Strings
/// La mayoría de los lenguajes de programación almacenan texto (nombres propios, direcciones, parrrafos de  un libro
/// como cadenas (strings)
let nombre: String = "Juan Carlos"
let apellidos: String = "Hernández Pazos"
let mascotaPreferida: String = "gatos 🐱 🐈 🐈‍⬛"
/// o usar type inference
let lugarDeNacimiento = "Ciudad de México"
let peliculaPreferida = "Africa mía"
let numeroTelefono = "55 9999 9999"
/// string literal es como se conoce al valor asignado o guardado en la variable

// Caracteres (no son lo mismo que cadenas)
/// character puede almacenar sólo un caracter
let caracterA: Character = "a"
let emojiGato: Character = "🐱"
let cadenaGato = "Gato"

// Concatenar strings
var mensaje = "¡Hola!" + " Mi nombre es "
mensaje += nombre
print(mensaje)

let exclamacion: Character = "!"
mensaje += String(exclamacion)

// Interpolación de strings
mensaje = "¡Hola mi nombre es \(nombre) y me gustan los \(mascotaPreferida)"
print(mensaje)

/// tambien funciona con números sin tener que convertirlos
let numeroPI = "El valor de PI es: \(soyUnDoble)"
print(numeroPI)

/// Un trings de puede estar en varias líneas -sólo hay que iniciar y terminar con triples comillas
let cadenaLarga = """
  Puedes tener un string
  que este en varias
  líneas,
  de esta forma.
  """
print(cadenaLarga)

// Tuples
/// Una tupla es un tipo que representa datos compuestos de más de un valor de cualquier otro tipo
let edad = 57
// let persona = (nombre, apellidos, edad, mascotaPreferida)
/// la línea anterior usa un tuple para guardar varios datos en una nueva variable
let persona = (nombre: nombre, apellidos: apellidos, edad: edad, mascota: mascotaPreferida)
/// dar un nombre a los datos hace más sencillo usarlos
print("Me llamo \(persona.0), tengo \(persona.2) y mi mascota preferida son los  \(persona.3)") /// sin usar el nombre sino la posición
print("Me llamo \(persona.nombre), tengo \(persona.edad) y mi mascota preferida son los  \(persona.mascota)") /// usando el nombre

let coordenadas = (2, 3) /// entero
let coordenadasDobles = (2.1, 3.5) /// doble
let coordenadasMixtas = (2.1, 3) /// entero y doble

let x1 = coordenadas.0
let y1 = coordenadas.1

let coordenadasConNombre = (x: 2, y: 3)
let x2 = coordenadasConNombre.x
let y2 = coordenadasConNombre.y

let coordenadas3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordenadas3D
//let x3 = coordinates3D.x
//let y3 = coordinates3D.y
//let z3 = coordinates3D.z

let (x4, y4, _) = coordenadas3D
/// usando un _ se ignora el elemeto

// Type aliases
/// Swift permite crear un tipo personalizado que es un alias de otro tipo.
typealias Mascota = String
let miMascota: Mascota = "Gato 🐈"
print(miMascota)


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
