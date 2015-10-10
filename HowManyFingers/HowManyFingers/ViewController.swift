//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Austin Colcord on 8/17/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var result: UILabel!

    
    @IBAction func submitButton(sender: AnyObject) {
        
        let randomNumber = String(arc4random_uniform(5) + 1)
        
        print(randomNumber)
        
        if (numberInput.text == "") {
            result.text = "Please Enter a Number!"
        }
        else if (numberInput.text == randomNumber) {
            result.text = "Nice!"
        }
        else {
            result.text = "Nope! It was a \(randomNumber)"
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

