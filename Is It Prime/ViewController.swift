//
//  ViewController.swift
//  Is It Prime
//
//  Created by Syngenta RDIS Mac on 5/2/17.
//  Copyright © 2017 Syngenta GenEx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        
        if let userString = textField.text {
            let userInteger = Int(userString)
        
        if let number = userInteger {
            
            var isPrime = true
            
            if number == 1 {
                isPrime = false
            }
            
            var i = 2
            
            while i < number {
                
                if number %  i == 0 {
                    
                    isPrime = false
                    
                }
                
                i += 1
                
            }
            
            if isPrime {
                
                resultLabel.text = "\(number) is prime!"
            } else {
                
                resultLabel.text = "\(number) is not prime."
            }

            
        } else {
            
            resultLabel.text = "Please enter a positive whole number."
        }
        
        
    }

}

}
