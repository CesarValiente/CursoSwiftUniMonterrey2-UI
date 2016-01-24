//
//  IngredientsVC.swift
//  PizzasForWatch
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class IngredientsVC: WKInterfaceController {
    @IBOutlet var pizzaIngredientsPicker: WKInterfacePicker!
    var pizza : Pizza?
    var pizzaIngredientsArray : [WKPickerItem] = []

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = (context as! Pizza)
        setup()
    }
    
    private func setup () {
        pizza?.ingredients = Ingredients.One
        pizzaIngredientsArray = createPickerItems()
        pizzaIngredientsPicker.setItems(pizzaIngredientsArray)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func onPizzaIngredientsPickerClick(value: Int) {
        let item = pizzaIngredientsArray[value]
        let ingredients : Ingredients = fromStringToIngredients(item.title)
        pizza?.ingredients = ingredients
    }
    
    private func createPickerItems () -> [WKPickerItem] {
        var pickerItems : [WKPickerItem] = []
        pickerItems.append(createPizzaIngredientsPickerItem(0, ingredients: Ingredients.One))
        pickerItems.append(createPizzaIngredientsPickerItem(1, ingredients: Ingredients.Two))
        pickerItems.append(createPizzaIngredientsPickerItem(2, ingredients: Ingredients.Three))
        pickerItems.append(createPizzaIngredientsPickerItem(3, ingredients: Ingredients.Four))
        pickerItems.append(createPizzaIngredientsPickerItem(4, ingredients: Ingredients.Five))
        
        return pickerItems
    }
    
    private func createPizzaIngredientsPickerItem (index : Int, ingredients : Ingredients) -> WKPickerItem {
        let item = WKPickerItem()
        item.title = ingredients.rawValue
        return item
    }


    @IBAction func onAcceptBtnClick() {
        pushControllerWithName("review", context: pizza)
    }
}
