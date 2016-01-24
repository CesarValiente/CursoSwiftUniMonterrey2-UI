//
//  ConfirmationVC.swift
//  PizzasForWatch
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmationVC: WKInterfaceController {
    @IBOutlet var confirmationLabel: WKInterfaceLabel!
    @IBOutlet var moreInfoLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        confirmationLabel.setText("Tu pizza está lista")
        moreInfoLabel.setText("Disfruta!")
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
