//
//  REsultViewController.swift
//  BMI Calculator
//
//  Created by Carlos Polanco on 9/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    @IBOutlet weak var BmiLabel: UILabel!
    @IBOutlet weak var bmiAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion:nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
