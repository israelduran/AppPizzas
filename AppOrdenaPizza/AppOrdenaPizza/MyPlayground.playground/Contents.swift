//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct ValoresPizza
{
    static var tamaño : Int = 0
    static var masa : Int = 0
    static var queso : Int = 0
    //static var ingrediemtes : Int = 0
    
    static var valoresTamaño = [0: "Chica", 1: "Mediana", 2: "Grande"]
    static var valoresMasa = [0: "Delgada", 1: "Crujiente", 2: "Gruesa"]
    static var valoresQueso = [0: "Mozarela", 1: "Cheddar", 2: "Parmesano", 3: "Sin Queso"]
    static var ingredientesOnOff = [0,0,0,0,0,0,0,0,0,0]
    static var ingredientes = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa","Chorizo"]
}

ValoresPizza.ingredientes[0]

for i in 0...9
{
    print(ValoresPizza.ingredientes[i])
}