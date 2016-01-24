//
//  CheeseVC.swift
//  PizzasForWatch
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class CheeseVC: WKInterfaceController {
    @IBOutlet var pizzaCheesePicker: WKInterfacePicker!
    var pizza : Pizza?
    var pizzaCheeseArray : [WKPickerItem] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = (context as! Pizza)
        setup()
    }
    
    private func setup () {
        pizza?.cheese = Cheese.Mozzarella
        pizzaCheeseArray = createPickerItems()
        pizzaCheesePicker.setItems(pizzaCheeseArray)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func onPizzaCheesePickerClick(value: Int) {
        let item = pizzaCheeseArray[value]
        let cheese : Cheese = fromStringToCheese(item.title)
        pizza?.cheese = cheese
    }
    
    private func createPickerItems () -> [WKPickerItem] {
        var pickerItems : [WKPickerItem] = []
        pickerItems.append(createPizzaCheesePickerItem(0, cheese: Cheese.Mozzarella))
        pickerItems.append(createPizzaCheesePickerItem(1, cheese: Cheese.Cheddar))
        pickerItems.append(createPizzaCheesePickerItem(2, cheese: Cheese.Parmesan))
        pickerItems.append(createPizzaCheesePickerItem(3, cheese: Cheese.NoCheese))
        
        return pickerItems
    }
    
    private func createPizzaCheesePickerItem (index : Int, cheese : Cheese) -> WKPickerItem {
        let item = WKPickerItem()
        item.title = cheese.rawValue
        return item
    }
    
    @IBAction func onAcceptBtnClick() {
        pushControllerWithName("ingredients", context: pizza)
    }
}
