//
//  PizzaSharedData.swift
//  PizzasForWatch
//
//  Created by Cesar Valiente on 24/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var size : Size
    var body : Body?
    var cheese : Cheese?
    var ingredients : Ingredients?
    
    init (size : Size) {
        self.size = size
    }

}
