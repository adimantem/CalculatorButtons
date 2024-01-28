//
//  Buttons.swift
//  CalculatorButtons
//
//  Created by Don Jose on 1/28/24.
//

import Foundation

enum Buttons: String, CaseIterable {
    case clear = "AC", sign = "±", percent = "%", divide = "÷",
         seven = "7", eight = "8", nine = "9", multiply = "×",
         four = "4", five = "5", six = "6", subtract = "−",
         one = "1", two = "2", three = "3", add = "+",
         zero = "0", period = ".", equals = "="
    
    func callAsFunction() -> String { rawValue }
}
