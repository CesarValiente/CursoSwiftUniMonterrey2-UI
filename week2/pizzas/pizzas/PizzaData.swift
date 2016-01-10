//
//  PizzaData.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import Foundation

enum Size : String {
    case Small = "Pequeña"
    case Medium = "Mediana"
    case Big = "Grande"
}

enum Body : String {
    case Thin = "Delgada"
    case Crunchy = "Crujiente"
    case Gross = "Gruesa"
}

enum Cheese : String {
    case Mozzarella
    case Cheddar
    case Parmesan = "Parmesano"
    case NoCheese = "Sin queso"
}

enum Ingredients : String {
    case One = "Jamón"
    case Two = "Jamón y pepperoni"
    case Three = "Jamón, pepperoni y pavo"
    case Four = "Jamón, pepperoni, pavo y salchicha"
    case Five = "Jamón, pepperoni, pavo, salchicha y aceituna"
}

enum Tomato : String {
    case Yes = "Con tomate"
    case No =  "Sin tomate"
}

