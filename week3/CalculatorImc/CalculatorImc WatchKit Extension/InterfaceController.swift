//
//  InterfaceController.swift
//  CalculatorImc WatchKit Extension
//
//  Created by Cesar Valiente on 11/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var weightStepsLabel: WKInterfaceLabel!
    @IBOutlet var heightStepsLabel: WKInterfaceLabel!
    var weight : Float = 1
    var height : Float = 1

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func onWeightSliderChange(value: Float) {
        weightStepsLabel.setText(String(value))
        weight = value
    }

    @IBAction func onHeightSliderChange(value: Float) {
        heightStepsLabel.setText(String(value/100))
        height = value/100
    }
    
    @IBAction func onCalculateClick() {
        let result = calculateImc(weight, height: height)
        let sharedData = SharedData(descriptionData: "Weight", imc: result)
        pushControllerWithName("imcResult", context: sharedData)
    }
    
    func calculateImc (weight : Float, height : Float) -> Float {
        return weight / (height * height)
    }
}
