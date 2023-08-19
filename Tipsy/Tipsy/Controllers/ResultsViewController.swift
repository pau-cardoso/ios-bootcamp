//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Paulina on 17/08/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tipSelected : Float = 0.10
    var splitNumber : Int = 2
    var resultTotal : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", resultTotal)
        settingsLabel.text = "Split between \(splitNumber) people, with \(Int(tipSelected*100))% tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
