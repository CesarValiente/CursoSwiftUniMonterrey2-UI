//
//  TomatoVC.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class TomatoVC: UIViewController {
    private var pizza : Pizza?
    private var summaryVC : SummaryVC?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onYesTomatoClick(sender: AnyObject) {
        addTomato(Tomato.Yes)
    }

    @IBAction func onNoTomatoClick(sender: AnyObject) {
        addTomato(Tomato.No)
    }
    
    private func addTomato (tomato : Tomato) {
        pizza?.tomato = tomato
    }
    
    func giveMeThePizza (pizza : Pizza) {
        self.pizza = pizza
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        summaryVC = segue.destinationViewController as! SummaryVC
        sendDataToNextView()
    }
    
    private func sendDataToNextView () {
        if let summaryVC = summaryVC {
            summaryVC.giveMeThePizza(pizza!)
        }
    }
}
