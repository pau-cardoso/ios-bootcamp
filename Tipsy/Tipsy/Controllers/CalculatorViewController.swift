//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipSelected : Float = 0.10
    var splitNumber : Int = 2
    var billTotal : Float = 0.0
    var result : Float = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let tipWithoutPercentage = String(sender.currentTitle!.dropLast())
        tipSelected = Float(tipWithoutPercentage)! / 100
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)
        splitNumberLabel.text = String(splitNumber)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billText = billTextField.text
        
        if billText != "" {
            billTotal = Float(billText!)!
            result = billTotal * (tipSelected+1) / Float(splitNumber)
            
            performSegue(withIdentifier: "resultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultsSegue" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.tipSelected = tipSelected
            destinationVC.splitNumber = splitNumber
            destinationVC.resultTotal = result
        }
    }
     
}

