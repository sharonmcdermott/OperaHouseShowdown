//
//  MainViewController.swift
//  OperalHouseShowdown
//
//  Created by Sharon's Mac on 6/22/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import UIKit
import QuartzCore

class MainViewController: UIViewController {
    
    // properties
    var player1: Player!
    var player2: Player!
    
    var challenges = ["Sing the aria O Mio Babbino Caro by Giacomo Puccini",
    "Sing Papageno’s Song from Mozart’s Magic Flute",
    "Sing the aria Brindisi from La Traviata by Giuseppe Verdi",
    "Sing Nessun Dorma from Turandot by Giacomo Puccini",
    "Sing Quango m’en vo’ soletto from La Boheme by Giacomo Puccini",
    "Sing Intendente..reggitor? from La Cenerentola by Gioachino Rossini"]

    
   //outlets

    @IBOutlet weak var octave1Label: UILabel!
    
    @IBOutlet weak var octave2Label: UILabel!
    
    @IBOutlet weak var challengeLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startNewGame()
        
        octave1Label.text = player1.currentStatus()
        
        octave2Label.text = player2.currentStatus()
        
        updateChallenge()
        
        
    }
    
    @IBAction func player1SingsOut(sender: UIButton) {
        if player2.losesVoiceBy(player1.attackPwr) {
            octave2Label.text = player2.currentStatus()
        } else {
            endOfGame()
        }
    
    }

    @IBAction func player2SingsOut(sender: UIButton) {
        if player1.losesVoiceBy(player2.attackPwr) {
            octave1Label.text = player1.currentStatus()
        } else {
            endOfGame()
        }

    }
    
    @IBAction func goCredits(sender: UIButton) {
    }
    

    @IBAction func restartGame(sender: UIButton) {
        startNewGame()
        updateLabels()
        
        // Create a Core Animation transition. This will crossfade from what is
        // currently on the screen to the changes that you're making below.
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 2
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        
        // This makes the animation go.
        view.layer.addAnimation(transition, forKey: nil)
    }

    
  
    func updateChallenge() {
        //call at the end of every sing action. It chooses a new challenge at the start of every game. It would be overkill for it to pick a new challenge every time you hit sing.
        
        let randomIndex = Int(arc4random_uniform(UInt32(challenges.count)))
        print(challenges[randomIndex])
        challengeLabel.text = (challenges[randomIndex])
    }

    
    func endOfGame() {
        var winner: Player
        var loser: Player
//        var possesivePronoun : "Pronoun"
        
        if player2.stillHasVoice() {
            winner = player2
            loser = player1
//            possesivePronoun = "their"
        } else {
            winner = player1
            loser = player2
//            possesivePronoun = "his"
        }
        challengeLabel.text = "\(loser.name) lost their voice and \(winner.name) won the challenge!"
        // how do a get the text to print gramatically correct?  \(string)
    }
    

    func startNewGame() {
        
        player1 = Player(name: "Barbers", octave: 130, attackPwr: 30)
        player2 = Player(name: "Bathtub Boy", octave: 120, attackPwr: 35)
    }
    
    
    func updateLabels() {
        octave1Label.text = player1.currentStatus()
        octave2Label.text = player2.currentStatus()
        updateChallenge()
    }
        
}

    
//            NSTimer.scheduledTimerWithTimeInterval(3.0, target: player1Sings, selector: "player15SingsOut", userInfo: nil, repeats: false)





