//
//  ViewController.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class SizeVc: UIViewController {
    private var pizza : Pizza?
    private var bodyVC : BodyVC?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSmallSizeClick(sender: AnyObject) {
        initPizza(Size.Small)
    }
  
    @IBAction func onMediumSizeClick(sender: AnyObject) {
        initPizza(Size.Medium)
    }
    
    @IBAction func onBigSizeClick(sender: AnyObject) {
        initPizza(Size.Big)
    }
    
    private func initPizza (size : Size) {
        pizza = Pizza(size: size)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        bodyVC = segue.destinationViewController as! BodyVC
                sendDataToNextView()
    }
    
    private func sendDataToNextView () {
        if let bodyVC = bodyVC {
            bodyVC.giveMeThePizza(pizza!)
        }
    }

}

