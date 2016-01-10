//
//  IngredientsVC.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class IngredientsVC: UIViewController {
    private var pizza : Pizza?
    private var tomatoVC : TomatoVC?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onOneIngredientClick(sender: AnyObject) {
        addIngredients(Ingredients.One)
    }
    
    @IBAction func onTwoIngredientsClick(sender: AnyObject) {
        addIngredients(Ingredients.Two)
    }

    @IBAction func onThreeIngredientsClick(sender: AnyObject) {
        addIngredients(Ingredients.Three)
    }
    
    @IBAction func onFourIngredientsClick(sender: AnyObject) {
        addIngredients(Ingredients.Four)
    }
    
    @IBAction func onFiveIngredientsClick(sender: AnyObject) {
        addIngredients(Ingredients.Five)
    }
    
    private func addIngredients (ingredients : Ingredients) {
        pizza?.ingredients = ingredients
    }
    
    func giveMeThePizza (pizza : Pizza) {
        self.pizza = pizza
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        tomatoVC = segue.destinationViewController as! TomatoVC
        sendDataToNextView()
    }
    
    private func sendDataToNextView () {
        if let tomatoVC = tomatoVC {
            tomatoVC.giveMeThePizza(pizza!)
        }
    }

}
