//
//  ViewController.swift
//  imccalculator
//
//  Created by Cesar Valiente on 03/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        weight.delegate = self
        height.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var point : CGPoint
        point = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(point, animated: true)
    }
    
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    
    @IBAction func textFieldDoneEditing(sender : UITextField) {
        sender.resignFirstResponder() //The keyboard will hide after editing
    }
    
    @IBAction func backgroundTap (sender : UIControl) {
        weight.resignFirstResponder()
        height.resignFirstResponder()
    }
    @IBAction func calculateImc(sender: AnyObject) {
        var imc : Double
        let localWeight : Double?
        localWeight = Double(self.weight.text!)!
        let localHeight : Double = Double(self.height.text!)!
        imc = localWeight!/(localHeight*localHeight)
        print("Result: \(imc)")
    }

}

