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
    var cpuSelectionArray = ["rock.jpeg", "paper.jpeg", "scissors.jpeg"]
    var didGameStart = false
    var myCurrentScore = 0
    var cpuCurrentScore = 0
    var rounds = 1
    
    @IBOutlet var myScore: UILabel!
    @IBOutlet var cpuScore: UILabel!
    @IBOutlet var results: UILabel!
    @IBOutlet var roundLabel: UILabel!
    
    @IBOutlet var mySelection: UIImageView!
    @IBOutlet var cpuSelection: UIImageView!

    @IBAction func resetGame(sender: AnyObject) {
        
        mySelection.image = UIImage(named: "questionMark.jpg")
        cpuSelection.image = UIImage(named: "questionMark.jpg")
        
        rounds += 1
        roundLabel.text = "Round: \(rounds)"
        results.text = ""
        
        didGameStart = false
        
    }
    
    @IBAction func rock(sender: AnyObject) {
        
        if !didGameStart {
            
            mySelection.image = UIImage(named: "rock.jpeg")
            
            let randomImage = Int(arc4random_uniform(UInt32(cpuSelectionArray.count)))
            
            cpuSelection.image = UIImage(named: cpuSelectionArray[randomImage])
            
            didGameStart = true
            
            if cpuSelection.image == UIImage(named: "rock.jpeg") {
                
                results.text = "TIE"
                
            }else if cpuSelection.image == UIImage(named: "paper.jpeg") {
                
                results.text = "LOSER"
                cpuCurrentScore += 1
                cpuScore.text = String(cpuCurrentScore)
                
            }else {
                
                results.text = "WINNER"
                myCurrentScore += 1
                myScore.text = String(myCurrentScore)
                
            }
            
        }
        
    }

    @IBAction func paper(sender: AnyObject) {
        
        if !didGameStart {
            
            mySelection.image = UIImage(named: "paper.jpeg")
            
            let randomImage = Int(arc4random_uniform(UInt32(cpuSelectionArray.count)))
            
            cpuSelection.image = UIImage(named: cpuSelectionArray[randomImage])
            
            didGameStart = true
            
            if cpuSelection.image == UIImage(named: "paper.jpeg") {
                
                results.text = "TIE"
                
            }else if cpuSelection.image == UIImage(named: "scissors.jpeg") {
                
                results.text = "LOSER"
                cpuCurrentScore += 1
                cpuScore.text = String(cpuCurrentScore)
                
            }else {
                
                results.text = "WINNER"
                myCurrentScore += 1
                myScore.text = String(myCurrentScore)
                
            }
            
        }
        
    }
    
    @IBAction func scissors(sender: AnyObject) {
        
        if !didGameStart {
        
            mySelection.image = UIImage(named: "scissors.jpeg")
        
            let randomImage = Int(arc4random_uniform(UInt32(cpuSelectionArray.count)))
        
            cpuSelection.image = UIImage(named: cpuSelectionArray[randomImage])
            
            didGameStart = true
            
            if cpuSelection.image == UIImage(named: "scissors.jpeg") {
                
                results.text = "TIE"
                
            }else if cpuSelection.image == UIImage(named: "rock.jpeg") {
                
                results.text = "LOSER"
                cpuCurrentScore += 1
                cpuScore.text = String(cpuCurrentScore)
                
                
            }else {
                
                results.text = "WINNER"
                myCurrentScore += 1
                myScore.text = String(myCurrentScore)
                
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        results.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

