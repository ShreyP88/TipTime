//
//  ViewController.swift
//  Time2Tip3
//
//  Created by Shreyas Pant on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var total4Two: UILabel!
    @IBOutlet weak var total4Three: UILabel!
    @IBOutlet weak var total4Four: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billAmountTextField.becomeFirstResponder()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let indexValue = defaults.integer(forKey: "index")
        tipControl.selectedSegmentIndex = 0
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.10, 0.15, 0.20]
        let tip = bill * tipPercentages[indexValue]
        let total = bill + tip
        let total2 = total / 2
        let total3 = total / 3
        let total4 = total / 4
        
        tipPercentageLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
        total4Two.text = String(format: "$%.2f", total2)
        total4Three.text = String(format: "$%.2f", total3)
        total4Four.text = String(format: "$%.2f", total4)
        
        
     
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
   
     
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    
    @IBAction func calculateTip(_ sender: Any) {
    
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.10, 0.15, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let total2 = total / 2
        let total3 = total / 3
        let total4 = total / 4
        
        tipPercentageLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
        total4Two.text = String(format: "$%.2f", total2)
        total4Three.text = String(format: "$%.2f", total3)
        total4Four.text = String(format: "$%.2f", total4)
        
        
        
    }
}

