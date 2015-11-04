//
//  ViewController.swift
//  ControllingKeyboard
//
//  Created by Austin Colcord on 11/3/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var entryText: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPress(sender: AnyObject) {
        label.text = entryText.text;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.entryText.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder();
        
        return true;
    }

}

