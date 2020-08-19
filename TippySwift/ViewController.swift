//
//  ViewController.swift
//  TippySwift
//
//  Created by Anna Goncharenko on 8/19/20.
//  Copyright © 2020 annagoncharenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("keyboard dismiss");
        self.view.endEditing(true);
    }
    
    @IBAction func onEdit(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0.0
       
        let percentages = [0.15, 0.20, 0.22]
        let tipPercentage = Double(percentages[tipSegmentControl.selectedSegmentIndex])
        
        let tip = tipPercentage * bill
        let total = bill + tip
        
        tipLabel.text = String.init(format: "$%.2f", tip)
        totalLabel.text = String.init(format: "$%.2f", total)
    }
}

