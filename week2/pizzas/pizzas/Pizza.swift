//
//  Pizza.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import Foundation

public class Pizza {
    private(set) var size : Size
    var body : Body?
    var cheese : Cheese?
    var ingredients : Ingredients?
    var tomato : Tomato?
    
    init (size : Size) {
        self.size = size
    }
}
