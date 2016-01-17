//
//  DetailView.swift
//  CalculatorImc
//
//  Created by Cesar Valiente on 11/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class DetailView: WKInterfaceController {
    @IBOutlet var imcResultLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let sharedData = context as! SharedData
        imcResultLabel.setText(String(sharedData.imc))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
