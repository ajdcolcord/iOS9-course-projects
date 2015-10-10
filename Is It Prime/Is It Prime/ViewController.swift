//
//  ViewController.swift
//  Is It Prime
//
//  Created by Austin Colcord on 9/8/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let number = Int(numTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
                isPrime = false
            }
        
            if number != 2 && number != 1 {
                for var x = 2 ; x < number ; x++ {
                    if (number % x) == 0 {
                        isPrime = false
                    }
                }
            }
            if isPrime {
                resultLabel.text = "\(number) is prime!"
            }
            else {
                resultLabel.text = "\(number) is not prime."
            }
        }
        else {
            resultLabel.text = "Please enter a whole number!"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

