//
//  VotingManager.swift
//  HeartRockScissors
//
//  Created by Denis on 11/8/20.
//  Copyright © 2020 Denis Skuratovich. All rights reserved.
//

import UIKit

class VotingManager {
    
    static let instance = VotingManager()
    
    func printingMessage(choice: String, result: String) -> String {
        
        var message = String()
        var yourChoice = "_"
        var computerChoice: Character = "_"
        switch choice {
        case "Rock":
            yourChoice = "👊"
            switch result {
            case "Victory":
                computerChoice = "✌️"
            case "Draw":
                computerChoice = "👊"
            case "Loose":
                computerChoice = "♥️"
            default:
                break
            }
        case "Heart":
            yourChoice = "♥️"
            switch result {
            case "Victory":
                computerChoice = "👊"
            case "Draw":
                computerChoice = "♥️"
            case "Loose":
                computerChoice = "✌️"
            default:
                break
            }
        case "Scissors":
            yourChoice = "✌️"
            switch result {
            case "Victory":
                computerChoice = "♥️"
            case "Draw":
                computerChoice = "✌️"
            case "Loose":
                computerChoice = "👊"
            default:
                break
            }
        default:
            break
        }
        
        
        message = ("(You) \n \(/*FontController.instance.setMessage(font: UIFont.systemFont(ofSize: 60), message: */yourChoice/*)*/) \n|\n|\n|\n \(computerChoice)\n (Computer) \n\n\n And it is: \n \(result)")
        
        return message
    }
    
    func checkForVictory(choice: VotingChoice) -> String {
        let variants = VotingChoice.allCases.map { $0.title }
        let computerChoice = variants[Int.random(in: 0...2)]
        
        switch choice {
        case .rock:
            if computerChoice == "Rock" {
                return "Draw"
            } else {
                if computerChoice == "Scissors" {
                    return "Victory"
                } else {
                    return "Loose"
                }
            }
            
        case .heart:
            if computerChoice == "Rock" {
                return "Victory"
                
            } else {
                if computerChoice == "Scissors" {
                    return "Loose"
                    
                } else {
                    return "Draw"
                    
                }
            }
            
        case .scissors:
            if computerChoice == "Rock" {
                return "Loose"
                
            } else {
                if computerChoice == "Scissors" {
                    return "Draw"
                    
                } else {
                    return "Victory"
                    
                }
            }
        }
    }
}
