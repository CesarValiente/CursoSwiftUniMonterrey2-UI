//
//  ImcModel.swift
//  UnitTestExample
//
//  Created by Cesar Valiente on 21/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import Foundation

class ImcModel {
    var weight : Float = 0
    var height : Float = 0
    
    func calculateImc () -> Float {
        var imc = weight / (height * height)
        imc = round (imc * 100)/100
        return imc
    }

}