//
//  ViewController.swift
//  Concentration
//
//  Created by Fidan Mammadova on 17.02.24.
//


import UIKit

class ViewController: UIViewController
{
    var game = Concentration()
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array<String> = ["👻","🎃","👻","🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print ("chosen card was not in cardButtons")
        }
}

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = .orange
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = .white
        }
    }
    
}

