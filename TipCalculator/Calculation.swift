//
//  Calculation.swift
//  TipCalculator
//
//  Created by Antonio Flores on 26/03/24.
//

import Foundation

struct Calculation {
    func calculateTip(of enteredAmount: Double, with tip: Double) -> Double? {
        guard enteredAmount >= 0 && tip >= 0 else { return nil }
        let tipPercentage = tip / 100
        return enteredAmount * tipPercentage
    }
}
