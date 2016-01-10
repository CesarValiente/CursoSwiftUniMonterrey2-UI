//
//  CheeseVC.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class CheeseVC: UIViewController {
    private var pizza : Pizza?
    private var ingredientsVC : IngredientsVC?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onMozzarellaClick(sender: AnyObject) {
        addCheese(Cheese.Mozzarella)
    }
    
    @IBAction func onCheddarClick(sender: AnyObject) {
        addCheese(Cheese.Cheddar)
    }

    @IBAction func onParmesanClick(sender: AnyObject) {
        addCheese(Cheese.Parmesan)
    }
    
    @IBAction func onNoCheeseClick(sender: AnyObject) {
        addCheese(Cheese.NoCheese)
    }
    
    private func addCheese (cheese : Cheese) {
        pizza?.cheese = cheese
    }
    
    func giveMeThePizza (pizza : Pizza) {
        self.pizza = pizza
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        ingredientsVC = segue.destinationViewController as! IngredientsVC
        sendDataToNextView()
    }
    
    private func sendDataToNextView () {
        if let ingredientsVC = ingredientsVC {
            ingredientsVC.giveMeThePizza(pizza!)
        }
    }

}
