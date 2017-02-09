//
//  ViewController.swift
//  EnumsFun
//
//  Created by Jim Campagno on 7/20/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var opponentCardLabel: UILabel!
    @IBOutlet weak var playerCardLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    @IBOutlet weak var flipCardButton: UIButton!
    
    let gameEngine = GameEngine(player1: "player1", player2: "player2")
    var firstMove = true
    
    @IBAction func flipCard(_ sender: UIButton) {
        let holder = gameEngine.playOneTurn()
        
        opponentCardLabel.text = holder.1?.description
        playerCardLabel.text = holder.2?.description
        winnerLabel.text = holder.0.name
        playerScoreLabel.text = String(gameEngine.player1.hand.cards.count)
        opponentScoreLabel.text = String(gameEngine.player2.hand.cards.count)
        
        print(holder.0.name)
        print(holder.1)
        print(holder.2)
        print(gameEngine.player1.hand.cards.count)
        print(gameEngine.player2.hand.cards.count)
        
    }
}

