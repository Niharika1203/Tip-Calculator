//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Niharika Srivastav on 8/24/20.
//  Copyright © 2020 Niharika Srivastav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func tipInp(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * 0.1
        let total = bill + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    }
    
}

