//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var calculatorBrain = CalculatorBrain()
    
    
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSliderData: UISlider!
    @IBOutlet weak var weightSliderData: UISlider!
    
    @IBAction func heighSlider(_ sender: UISlider) {
        let value = round(sender.value * 100)/100.0
        height.text = "\(value)m"
    
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let  value = Int(sender.value)
        weight.text = "\(value)kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let height = heightSliderData.value
        let weight = weightSliderData.value
        
        calculatorBrain.calculateBmi(height: height, weight:weight)
       
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = "\(calculatorBrain.getBMIValue())"
        }
    }
    
}

