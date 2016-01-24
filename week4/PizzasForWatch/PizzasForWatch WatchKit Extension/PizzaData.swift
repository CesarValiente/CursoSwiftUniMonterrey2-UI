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

func fromStringToSize (rawValue : String?) -> Size {
    if (rawValue == Size.Small.rawValue) {
        return Size.Small
    }else if (rawValue == Size.Medium.rawValue) {
        return Size.Medium
    }else {
        return Size.Big
    }
}

enum Body : String {
    case Thin = "Delgada"
    case Crunchy = "Crujiente"
    case Gross = "Gruesa"
}

func fromStringToBody (rawValue : String?) -> Body {
    if (rawValue == Body.Thin.rawValue) {
        return Body.Thin
    }else if (rawValue == Body.Crunchy.rawValue) {
        return Body.Crunchy
    }else {
        return Body.Gross
    }
}

enum Cheese : String {
    case Mozzarella
    case Cheddar
    case Parmesan = "Parmesano"
    case NoCheese = "Sin queso"
}

func fromStringToCheese (rawValue : String?) -> Cheese {
    if (rawValue == Cheese.Mozzarella.rawValue) {
        return Cheese.Mozzarella
    }else if (rawValue == Cheese.Cheddar.rawValue) {
        return Cheese.Cheddar
    }else if (rawValue == Cheese.Parmesan.rawValue){
        return Cheese.Parmesan
    }else {
        return Cheese.NoCheese
    }
}

enum Ingredients : String {
    case One = "1 ingrediente"
    case Two = "2 ingredientes"
    case Three = "3 ingredientes"
    case Four = "4 ingredientes"
    case Five = "5 ingredientes"
}

func fromStringToIngredients (rawValue : String?) -> Ingredients {
    if (rawValue == Ingredients.One.rawValue) {
        return Ingredients.One
    }else if (rawValue == Ingredients.Two.rawValue) {
        return Ingredients.Two
    }else if (rawValue == Ingredients.Three.rawValue){
        return Ingredients.Three
    }else if (rawValue == Ingredients.Four.rawValue){
        return Ingredients.Four
    }else {
        return Ingredients.Five
    }
}
