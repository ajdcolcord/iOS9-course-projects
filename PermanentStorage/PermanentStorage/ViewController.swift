//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Austin Colcord on 11/3/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //NSUserDefaults.standardUserDefaults().setObject("Austin", forKey: "name");
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String;
        
        print(userName);
        
        let arr = [1, 2, 3, 4];
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array");
        
        let returnedArr = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray;
        
        for x in returnedArr {
            print(x);
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

