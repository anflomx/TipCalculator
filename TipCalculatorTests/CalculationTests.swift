//
//  CalculationTests.swift
//  TipCalculatorTests
//
//  Created by Antonio Flores on 26/03/24.
//

import XCTest
@testable import TipCalculator

final class CalculationTests: XCTestCase {
    func testSuccessfulTipCalculation() {
        // Given
        let enteredAmount = 100.00
        let tipSlider = 25.00
        let calculation = Calculation()
        
        // When
        let tip = calculation.calculateTip(of: enteredAmount,
                                           with: tipSlider)
        
        // Then
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeEnteredAmountTipCalculation() {
        // Given
        let enteredAmount = -100.00
        let tipSlider = 25.00
        let calculation = Calculation()
        
        // When
        let tip = calculation.calculateTip(of: enteredAmount,
                                           with: tipSlider)
        
        // Then
        XCTAssertNil(tip)
    }
}
