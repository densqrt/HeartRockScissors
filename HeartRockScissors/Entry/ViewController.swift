//
//  ViewController.swift
//  HeartRockScissors
//
//  Created by Denis on 11/8/20.
//  Copyright © 2020 Denis Skuratovich. All rights reserved.
//

import UIKit

class ViewController: BaseController {

    @IBOutlet weak var gameNameLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var winsLabel: UILabel!
    @IBOutlet weak var loosesLabel: UILabel!
    
    
    func winsAndLoosesCounter(result: String) {
        switch result {
        case "Victory":
            Constants.wins += 1
            self.winsLabel.text = "Total wins: \(Constants.wins)"
        case "Loose":
            Constants.loses += 1
            self.loosesLabel.text = "Total loses: \(Constants.loses)"
        default:
            break
        }
    }
    
}

// MARK: - Actions
extension ViewController {
    
    @IBAction func rockButton(_ sender: Any) {
        let choice = VotingChoice.rock.title
        let result = VotingManager.instance.checkForVictory(choice: .rock)
        winsAndLoosesCounter(result: result)
        
        presentAlert(title: choice.uppercased(), message: VotingManager.instance.printingMessage(choice: choice, result: result), actionTitle: "Try one more time", style: .alert)
    }
    
    @IBAction func heartButton(_ sender: Any) {
        let choice = VotingChoice.heart.title
        let result = VotingManager.instance.checkForVictory(choice: .heart)
        winsAndLoosesCounter(result: result)
        
        presentAlert(title: choice.uppercased(), message:  VotingManager.instance.printingMessage(choice: choice, result: result), actionTitle: "Try one more time", style: .alert)
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        let choice = VotingChoice.scissors.title
        let result = VotingManager.instance.checkForVictory(choice: .scissors)
        winsAndLoosesCounter(result: result)
        
        presentAlert(title: VotingChoice.scissors.title.uppercased(), message: VotingManager.instance.printingMessage(choice: choice, result: result), actionTitle: "Try one more time", style: .alert)
    }
}
