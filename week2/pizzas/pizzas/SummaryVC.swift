//
//  SummaryVC.swift
//  pizzas
//
//  Created by Cesar Valiente on 10/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import UIKit

class SummaryVC: UIViewController {
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var tomatoLabel: UILabel!
    
    private var pizza : Pizza?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        sizeLabel.text = pizza?.size.rawValue
        bodyLabel.text = pizza?.body?.rawValue
        cheeseLabel.text = pizza?.cheese?.rawValue
        ingredientsLabel.text = pizza?.ingredients?.rawValue
        tomatoLabel.text = pizza?.tomato?.rawValue
    }
    
    func giveMeThePizza (pizza : Pizza) {
        self.pizza = pizza
    }
}
