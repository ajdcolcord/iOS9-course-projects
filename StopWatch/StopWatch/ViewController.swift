//
//  ViewController.swift
//  StopWatch
//
//  Created by Austin Colcord on 9/9/15.
//  Copyright © 2015 ColcordApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var playing = false
    
    var time = 0
    
    func increaseTimer() {
        time++
        timerLabel.text = String(time)
    }
    
    @IBAction func play(sender: AnyObject) {
        if !playing {
            playing = true
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func pause(sender: AnyObject) {
        playing = false
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        playing = false
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

