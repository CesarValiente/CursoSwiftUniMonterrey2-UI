//
//  BodyVC.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class BodyVC: UIViewController {
    private var pizza : Pizza?
    private var cheeseVC : CheeseVC?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onThinClick(sender: AnyObject) {
        setBody(Body.Thin)
    }
    
    @IBAction func onCrunchyClick(sender: AnyObject) {
        setBody(Body.Crunchy)
    }
  
    @IBAction func onGrossClick(sender: AnyObject) {
        setBody(Body.Gross)
    }
    
    private func setBody(body : Body) {
        pizza?.body = body
    }
    
    func giveMeThePizza (pizza : Pizza) {
        self.pizza = pizza
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        cheeseVC = segue.destinationViewController as! CheeseVC
        sendDataToNextView()
    }
    
    private func sendDataToNextView () {
        if let cheeseVC = cheeseVC {
            cheeseVC.giveMeThePizza(pizza!)
        }
    }

}
