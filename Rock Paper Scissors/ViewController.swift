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
    
    //Images to be animated and selected randomly for the cpu
    var cpuSelectionArray = ["rock.jpeg", "paper.jpeg", "scissors.jpeg"]
    
    //To prevent the user from making consecutive slections
    var didGameStart = false
    
    //To keep track of the scores and the rounds
    var myCurrentScore = 0
    var cpuCurrentScore = 0
    var rounds = 1
    
    @IBOutlet var myScore: UILabel!
    @IBOutlet var cpuScore: UILabel!
    @IBOutlet var results: UILabel!
    @IBOutlet var roundLabel: UILabel!
    @IBOutlet var playReset: UIButton!
    
    @IBOutlet var mySelection: UIImageView!
    @IBOutlet var cpuSelection: UIImageView!

    @IBAction func resetGame(sender: AnyObject) {
        
        //End the game after 23 rounds and reset the values
        if rounds == 23 || myCurrentScore == 10 || cpuCurrentScore == 10 {
            
            rounds = 0
            myCurrentScore = 0
            cpuCurrentScore = 0
            results.text = "Game Over"
            playReset.setTitle("Reset", forState: .Normal)
            playReset.setTitleColor(UIColor.redColor(), forState: .Normal)
            mySelection.image = UIImage(named: "questionMark.jpg")
            cpuSelection.image = UIImage(named: "questionMark.jpg")
            playReset.enabled = true
            playReset.setTitleColor(UIColor.greenColor(), forState: .Normal)
            
        }else {
            mySelection.image = UIImage(named: "questionMark.jpg")
            timer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: #selector(animate), userInfo: nil, repeats: true)
            rounds += 1
            roundLabel.text = "Round: \(rounds)"
            myScore.text = "ME: \(myCurrentScore)"
            cpuScore.text = "CPU: \(cpuCurrentScore)"
            results.text = ""
            playReset.setTitle("Play", forState: .Normal)
            playReset.enabled = false
            playReset.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
        }
        
        didGameStart = false
        
    }
    
    @IBAction func rock(sender: AnyObject) {
        
        if !didGameStart {
            
            timer.invalidate()
            mySelection.image = UIImage(named: "rock.jpeg")
            let randomImage = Int(arc4random_uniform(UInt32(cpuSelectionArray.count)))
            cpuSelection.image = UIImage(named: cpuSelectionArray[randomImage])
            didGameStart = true
            
            if cpuSelection.image == UIImage(named: "rock.jpeg") {
                
                results.text = "TIE"
                
            }else if cpuSelection.image == UIImage(named: "paper.jpeg") {
                
                results.text = "LOSER"
                cpuCurrentScore += 1
                cpuScore.text = "CPU: \(cpuCurrentScore)"
                
            }else {
                
                results.text = "WINNER"
                myCurrentScore += 1
                myScore.text = "ME: \(myCurrentScore)"
                
            }
            
            if cpuCurrentScore == 10 {
                
                results.text = "CPU Won"
                playReset.setTitle("Reset", forState: .Normal)

            }else if myCurrentScore == 10 {
                
                results.text = "You Won"
                playReset.setTitle("Reset", forState: .Normal)
                
            }
            
            playReset.enabled = true
            playReset.setTitleColor(UIColor.greenColor(), forState: .Normal)
            
        }
        
    }

    @IBAction func paper(sender: AnyObject) {
        
        if !didGameStart {
    
            timer.invalidate()
            mySelection.image = UIImage(named: "paper.jpeg")
            let randomImage = Int(arc4random_uniform(UInt32(cpuSelectionArray.count)))
            cpuSelection.image = UIImage(named: cpuSelectionArray[randomImage])
            didGameStart = true
            
            if cpuSelection.image == UIImage(named: "paper.jpeg") {
                
                results.text = "TIE"
                
            }else if cpuSelection.image == UIImage(named: "scissors.jpeg") {
                
                results.text = "LOSER"
                cpuCurrentScore += 1
                cpuScore.text = "CPU: \(cpuCurrentScore)"
                
            }else {
                
                results.text = "WINNER"
                myCurrentScore += 1
                myScore.text = "ME: \(myCurrentScore)"
                
            }
            
            if cpuCurrentScore == 10 {
                
                results.text = "CPU Won"
                playReset.setTitle("Reset", forState: .Normal)
                
            }else if myCurrentScore == 10 {
                
                results.text = "You Won"
                playReset.setTitle("Reset", forState: .Normal)
            }
            
            playReset.enabled = true
            playReset.setTitleColor(UIColor.greenColor(), forState: .Normal)
            
        }
        
    }
    
    @IBAction func scissors(sender: AnyObject) {
        
        if !didGameStart {
            
            timer.invalidate()
            mySelection.image = UIImage(named: "scissors.jpeg")
            let randomImage = Int(arc4random_uniform(UInt32(cpuSelectionArray.count)))
            cpuSelection.image = UIImage(named: cpuSelectionArray[randomImage])
            didGameStart = true
            
            if cpuSelection.image == UIImage(named: "scissors.jpeg") {
                
                results.text = "TIE"
                
            }else if cpuSelection.image == UIImage(named: "rock.jpeg") {
                
                results.text = "LOSER"
                cpuCurrentScore += 1
                cpuScore.text = "CPU: \(cpuCurrentScore)"
                
                
            }else {
                
                results.text = "WINNER"
                myCurrentScore += 1
                myScore.text = "ME: \(myCurrentScore)"
                
            }
            
            if cpuCurrentScore == 10 {
                
                results.text = "CPU Won"
                playReset.setTitle("Reset", forState: .Normal)
                
            }else if myCurrentScore == 10 {
                
                results.text = "You Won"
                playReset.setTitle("Reset", forState: .Normal)
            }
            
            playReset.enabled = true
            playReset.setTitleColor(UIColor.greenColor(), forState: .Normal)
            
        }
        
    }
    
    //Flip through the images in ananimated form prior to cpu selection. Call this method from the timer function.
    func animate() {
        
        if cpuSelection.image == UIImage(named: "rock.jpeg") {
            cpuSelection.image = UIImage(named: "paper.jpeg")
        }else if cpuSelection.image == UIImage(named: "paper.jpeg") {
            cpuSelection.image = UIImage(named: "scissors.jpeg")
        }else {
            cpuSelection.image = UIImage(named: "rock.jpeg")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        results.text = ""
        
        //Disable the play/reset button upon arrival of the view
        playReset.enabled = false
        playReset.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

