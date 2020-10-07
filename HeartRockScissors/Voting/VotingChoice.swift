//
//  VotingChoice.swift
//  HeartRockScissors
//
//  Created by Denis on 11/8/20.
//  Copyright © 2020 Denis Skuratovich. All rights reserved.
//

import Foundation

enum VotingChoice: Int, CaseIterable {
    case rock
    case scissors
    case heart
    
    var title: String {
        switch self {
        case .rock: return "Rock"
        case .scissors: return "Scissors"
        case .heart: return "Heart"
        }
    }
}
