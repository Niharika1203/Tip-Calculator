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
    
    @IBOutlet weak var tipPercent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func tipInp(_ sender: Any) {
        
        let tipPercents = [0.15, 0.18, 0.2 ]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercents[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

