//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Roydon Jeffrey on 7/11/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cpuSelectionArray = ["Rock", "Paper", "Scissors"]
    
    @IBOutlet var myScore: UILabel!
    @IBOutlet var cpuScore: UILabel!
    @IBOutlet var results: UILabel!
    
    @IBOutlet var cpuSelection: UIButton!
    @IBOutlet var mySelection: UIButton!
    
    @IBAction func mySelctionChosen(sender: AnyObject) {
    }
    
    @IBAction func playGame(sender: AnyObject) {
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

