//
//  ViewController.swift
//  CalculatorTip
//
//  Created by Marc D. on 4/5/20.
//  Copyright © 2020 Marc D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender:
        Any){
        print("Hello")
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the amount of the Bill
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
    
}

