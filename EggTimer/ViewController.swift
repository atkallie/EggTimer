//
//  ViewController.swift
//  EggTimer
//
//  Created by Ahmed T Khalil on 11/23/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //make timer object
    var timer = Timer()
    var isPaused: Bool = true
    
    //timeLabel
    @IBOutlet var timeLabel: UILabel!
    
    //pause button
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        isPaused = true
    }
    
    //play button
    @IBAction func play(_ sender: Any) {
        if isPaused{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decrement), userInfo: nil, repeats: true)
            isPaused = false
        }
    }
    
    //reset button
    @IBAction func reset(_ sender: Any) {
        timeLabel.text = "210"
    }
    
    //minus 10 button
    @IBAction func minus10(_ sender: Any) {
        if (Int(timeLabel.text!)!-10)>=0{
            timeLabel.text = String(Int(timeLabel.text!)!-10)
        }
    }
    
    //plus 10 button
    @IBAction func plus10(_ sender: Any) {
        timeLabel.text = String(Int(timeLabel.text!)!+10)
    }
    
    func decrement()->(){
        if (Int(timeLabel.text!)!)==0{
        } else{
            timeLabel.text = String(Int(timeLabel.text!)!-1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set up timer parameters
        /*
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decrement), userInfo: nil, repeats: true)
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

