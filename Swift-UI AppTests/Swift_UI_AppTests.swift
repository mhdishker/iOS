//
//  Swift_UI_AppTests.swift
//  Swift-UI AppTests
//
//  Created by Mohammad Ishker on 3/8/24.
//

import XCTest
@testable import Swift_UI_App

final class Swift_UI_AppTests: XCTestCase {

    var game: Game!
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScoreWithPositiveDifference() throws {
        var guess: Int = game.target + 5
        var score: Int = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95) // 100 - difference between guess and score
    }
    
    func testScoreWithNigativeDifference() throws {
        var guess: Int = game.target - 5
        var score: Int = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95) // 100 - difference between guess and score
    }

}
