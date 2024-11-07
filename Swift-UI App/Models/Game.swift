//
//  Game.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/6/24.
//

import Foundation

struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(sliderValue - target)
    }
}

