//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Carlos Polanco on 9/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiData: Float = 0.00
    
    
    func getBMIValue() -> Float {
       return bmiData
    }
    
  mutating func calculateBmi(height:Float, weight:Float) {
    bmiData = round ((weight / pow(height, 2)) * 10)/10
    }
 
}
