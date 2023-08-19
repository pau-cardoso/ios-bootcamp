//
//  BillBrain.swift
//  Tipsy
//
//  Created by Paulina on 18/08/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct BillBrain {
    var bill : Bill
    
    func calculateBillTotal(billTotal: Float, tip: Float, numberOfPeople: Int) -> Float {
        return billTotal * (tip+1) / Float(numberOfPeople)
    }
    
    func getTotal() {
        
    }
}
