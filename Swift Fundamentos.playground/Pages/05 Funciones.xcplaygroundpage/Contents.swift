//
//  Swift Fundamentos
//
//  Created by Juan Carlos Pazos on Jun/22.
//

// MARK: 4 - Funciones

/*
 馃敼 Una funci贸n permite definir un bloque de c贸digo para ejecutar una tarde.
 馃敼 Rangos cerrados son los que incluyen los valores inicial y final
 馃敼 Rangos medio abiertos incluyen el valor inical y terminan un valor antes del valor final
 馃敼 Los loos for permiten iterar por un rango
 馃敼 La instrucci贸n continue permite terinar la iteracci贸n actual y pasar al siguiente
 馃敼 La instrucci贸n switch se usa para decidir qu茅 c贸digo ejecutar en base al valor de una variable o constante
 馃敼 El porder de switch viene de lo que se conoce como "pattern matching para comparar valores usando reglas complejas
 */

func imprimirMiNombre() {
    print("Mi nombre es Juan Carlos")
}
/// el c贸digo anterior es "function declaration"
imprimirMiNombre()

// Par谩metros
/// Parametrizar una funci贸n es ejecutarla de forma diferente dependiendo de los datos pasados en los par谩metros
func imprimirMultiplosDeCinco(value: Int) {
    print("\(value) * 5 = \(value * 5)")
}
/// los parent茅sis contienen la lista de par谩metros.
/// los parent茅sis son necesarios tanto al declarar como al llamar a la funci贸n (a煤n cuando est茅n vacios)
imprimirMultiplosDeCinco(value: 10)

/// Una funci贸n declara sis par谩metros en la lista de par谩metros, cuando se llama a la funci贸n se proprcionan argumentos para los par谩metros de la funci贸n

/// Usando un nombre externo se hace m谩s sencillo pasar los argumentos a la funci贸n, en la declaraci贸n de par谩metros antes del nombre del par谩metro ingresar el nombre a mostrar en la llamada
func imprimirMultiploDe(multiplicar multiplier: Int, por value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
imprimirMultiploDe(multiplicar: 4, por: 2)
/// si no se desea pasar el nombre del par谩metro, s贸lo reemplazarlo por _

func multiplicaPredeterminado(multiplica value: Int, _ value2: Int = 1) {
    print("\(value) * \(value2) = \(value * value2)")
}
multiplicaPredeterminado(multiplica: 4)
/// es posible asignar un valor predeterminado que sirve para cuando no se pasa un valor

// Devolver valores
