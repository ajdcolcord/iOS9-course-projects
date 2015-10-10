//
//  ViewController.swift
//  Hello World
//
//  Created by Austin Colcord on 8/16/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        
        print("Button Tapped!")
        
        label.text = ageField.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hello Austin!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

