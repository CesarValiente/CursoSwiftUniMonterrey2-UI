//
//  ReviewVC.swift
//  PizzasForWatch
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class ReviewVC: WKInterfaceController {
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    @IBOutlet var bodyLabel: WKInterfaceLabel!
    @IBOutlet var cheeseLabel: WKInterfaceLabel!
    @IBOutlet var ingredientsLabel: WKInterfaceLabel!
    
    var pizza : Pizza?

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = (context as! Pizza)
        setup()
    }
    
    private func setup () {
        sizeLabel.setText(pizza?.size.rawValue)
        bodyLabel.setText(pizza?.body?.rawValue)
        cheeseLabel.setText(pizza?.cheese?.rawValue)
        ingredientsLabel.setText(pizza?.ingredients?.rawValue)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func onAcceptBtnClick() {
        pushControllerWithName("confirmation", context: pizza)
    }
}
