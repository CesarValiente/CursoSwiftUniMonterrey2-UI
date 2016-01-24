//
//  BodyVC.swift
//  PizzasForWatch
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class BodyVC: WKInterfaceController {
    @IBOutlet var pizzaBodyPicker: WKInterfacePicker!
    var pizza : Pizza?
    var pizzaBodyArray : [WKPickerItem] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = (context as! Pizza)
        setup()
    }
    
    private func setup () {
        pizza?.body = Body.Thin
        pizzaBodyArray = createPickerItems()
        pizzaBodyPicker.setItems(pizzaBodyArray)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onPizzaBodyPickerClick(value: Int) {
        let item = pizzaBodyArray[value]
        let body : Body = fromStringToBody(item.title)
        pizza?.body = body
    }
    
    private func createPickerItems () -> [WKPickerItem] {
        var pickerItems : [WKPickerItem] = []
        pickerItems.append(createPizzaBodyPickerItem(0, body : Body.Thin))
        pickerItems.append(createPizzaBodyPickerItem(1, body : Body.Crunchy))
        pickerItems.append(createPizzaBodyPickerItem(2, body : Body.Gross))
        
        return pickerItems
    }
    
    private func createPizzaBodyPickerItem (index : Int, body : Body) -> WKPickerItem {
        let item = WKPickerItem()
        item.title = body.rawValue
        return item
    }
    
    @IBAction func onAcceptBtnClick() {
        pushControllerWithName("cheese", context: pizza)
    }

}
