//
//  AlarmViewController.swift
//  YOUR JOKER
//
//  Created by Sumayyah AHmad on 17/12/1444 AH.
//

import UIKit

class AlarmViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var timerLabel: UILabel!   //label on top of the view
    
    
    
    @IBOutlet weak var countingDown: UISwitch! //for use in iteration 2
    
    
    
    @IBAction func startTimer(sender: UIButton) {
    }
    @IBAction func stopTimer(sender: UIButton) {
    }
    @IBAction func resetTimer(sender: UIButton) {
    }
    
    var timer = NSTimer() //make a timer variable, but don't do anything yet
    let timeInterval:NSTimeInterval = 10.0
    
    
    
    var timer = NSTimer() //make a timer variable, but don't do anything yet
    let timeInterval:NSTimeInterval = 0.05 //smaller interval
    let timerEnd:NSTimeInterval = 10.0 //seconds to end the timer
    var timeCount:NSTimeInterval = 0.0 // counter for the timer
    
    
    func timerDidEnd(timer:NSTimer){
        if countingDown.on{
            //timer that counts down
            timeCount = timeCount - timeInterval
            if timeCount <= 0 {  //test for target time reached.
                timerLabel.text = "Pizza Ready!!"
                timer.invalidate()
            } else { //update the time on the clock if not reached
                timerLabel.text = timeString(timeCount)
            }
        } else {
            //timer that counts up
            timeCount = timeCount + timeInterval
            if timeCount >= timerEnd{  //test for target time reached.
                timerLabel.text = "Pizza Ready!!"
                timer.invalidate()
            } else { //update the time on the clock if not reached
                timerLabel.text = timeString(timeCount)
            }
            
        }
        
        
        func timeString(time:NSTimeInterval) -> String {
            let minutes = Int(time) / 60
            let seconds = time - Double(minutes) * 60
            let secondsFraction = seconds - Double(Int(seconds))
            return String(format:"%02i:%02i.%01i",minutes,Int(seconds),Int(secondsFraction * 10.0))
        }
        
        
        var isTiming = false
    }
    
}
}
