//
//  ScreenData.swift
//  CalculatorImc
//
//  Created by Cesar Valiente on 11/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit

class SharedData: NSObject {
    var descriptionData : String = ""
    var imc : Float = 0

    init (descriptionData : String, imc : Float) {
        self.descriptionData = descriptionData
        self.imc = imc
    }

}
