//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Austin Colcord on 9/9/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    
    func result() {
        
        time++
        
        print(time)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var timer = NSTimer()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

