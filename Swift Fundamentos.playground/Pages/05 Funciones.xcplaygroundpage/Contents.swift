//
//  Swift Fundamentos
//
//  Created by Juan Carlos Pazos on Jun/22.
//

// MARK: 4 - Funciones

/*
 🔹 Una función permite definir un bloque de código para ejecutar una tarde.
 🔹 Rangos cerrados son los que incluyen los valores inicial y final
 🔹 Rangos medio abiertos incluyen el valor inical y terminan un valor antes del valor final
 🔹 Los loos for permiten iterar por un rango
 🔹 La instrucción continue permite terinar la iteracción actual y pasar al siguiente
 🔹 La instrucción switch se usa para decidir qué código ejecutar en base al valor de una variable o constante
 🔹 El porder de switch viene de lo que se conoce como "pattern matching para comparar valores usando reglas complejas
 */

func imprimirMiNombre() {
    print("Mi nombre es Juan Carlos")
}
/// el código anterior es "function declaration"
imprimirMiNombre()

// Parámetros
/// Parametrizar una función es ejecutarla de forma diferente dependiendo de los datos pasados en los parámetros
func imprimirMultiplosDeCinco(value: Int) {
    print("\(value) * 5 = \(value * 5)")
}
/// los parentésis contienen la lista de parámetros.
/// los parentésis son necesarios tanto al declarar como al llamar a la función (aún cuando estén vacios)
imprimirMultiplosDeCinco(value: 10)

/// Una función declara sis parámetros en la lista de parámetros, cuando se llama a la función se proprcionan argumentos para los parámetros de la función

/// Usando un nombre externo se hace más sencillo pasar los argumentos a la función, en la declaración de parámetros antes del nombre del parámetro ingresar el nombre a mostrar en la llamada
func imprimirMultiploDe(multiplicar multiplier: Int, por value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
imprimirMultiploDe(multiplicar: 4, por: 2)
/// si no se desea pasar el nombre del parámetro, sólo reemplazarlo por _

func multiplicaPredeterminado(multiplica value: Int, _ value2: Int = 1) {
    print("\(value) * \(value2) = \(value * value2)")
}
multiplicaPredeterminado(multiplica: 4)
/// es posible asignar un valor predeterminado que sirve para cuando no se pasa un valor

// Devolver valores
