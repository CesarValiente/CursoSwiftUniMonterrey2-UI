//
//  InterfaceController.swift
//  PizzasForWatch WatchKit Extension
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var pizzaSizePicker: WKInterfacePicker!
    var pizzaSizeArray : [WKPickerItem] = []
    var pizza : Pizza = Pizza(size: Size.Small)

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        setup ()
    }
    
    private func setup () {
        pizzaSizeArray = createPickerItems()
        pizzaSizePicker.setItems(pizzaSizeArray)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onPizzaSizePickerClick(value: Int) {
        let item = pizzaSizeArray[value]
        let size : Size = fromStringToSize(item.title)
        pizza.size = size
    }
    
    private func createPickerItems () -> [WKPickerItem] {
        var pickerItems : [WKPickerItem] = []
        pickerItems.append(createPizzaSizePickerItem(0, size : Size.Small))
        pickerItems.append(createPizzaSizePickerItem(1, size : Size.Medium))
        pickerItems.append(createPizzaSizePickerItem(2, size : Size.Big))

        return pickerItems
    }
    
    private func createPizzaSizePickerItem (index : Int, size : Size) -> WKPickerItem {
        let item = WKPickerItem()
        item.title = size.rawValue
        return item
    }
    @IBAction func onAcceptBtnClick() {
        pushControllerWithName("body", context: pizza)
    }
}
