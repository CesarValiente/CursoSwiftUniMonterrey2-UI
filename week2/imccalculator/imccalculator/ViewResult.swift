//
//  VistaResultadosViewController.swift
//  imccalculator
//
//  Created by Cesar Valiente on 09/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class ViewResult: UIViewController {
    @IBOutlet weak var result: UILabel!
    var imcIndex : Double = 0
    
    override func viewWillAppear(animated: Bool) {
        result.text = String(imcIndex)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
