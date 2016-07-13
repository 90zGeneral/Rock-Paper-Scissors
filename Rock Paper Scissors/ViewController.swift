//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Roydon Jeffrey on 7/11/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var cpuSelectionArray = ["Rock.jpeg", "Paper.jpeg", "Scissors.jpeg"]
    
    @IBOutlet var myScore: UILabel!
    @IBOutlet var cpuScore: UILabel!
    @IBOutlet var results: UILabel!
    
    @IBOutlet var cpuSelection: UIButton!
    @IBOutlet var mySelection: UIButton!
    
    @IBAction func mySelctionChosen(sender: AnyObject) {
    }
    
    @IBAction func playGame(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    func update() {
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        results.text = "WINNER!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

