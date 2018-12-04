//
//  ViewController.swift
//  window-shopper
//
//  Created by Khaled Aldousari on 12/3/18.
//  Copyright © 2018 Khaled Aldousari. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a button programatically
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(mainViewController.calculate), for: .touchUpInside)
        
        //attach the button to the textfield
        wageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    @IBAction func clearCalculatorPressed(_ sender: UIButton) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        priceTextField.text = ""
        wageTextField.text = ""
    }
    @objc func calculate() {
        if let wageText = wageTextField.text,let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText){
                view.endEditing(true)
                resultLabel.isHidden = false
                resultLabel.text =  String(Wage.getHours(forWage: wage, andPrice: price))
                
            }
            
        }
       
        resultLabel.isHidden = false
        hoursLabel.isHidden = false
    }
    
}

