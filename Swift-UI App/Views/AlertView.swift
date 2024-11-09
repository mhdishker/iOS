//
//  AlertView.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/8/24.
//

import SwiftUI


struct AlertView: View {
    @Binding var isAlertVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var title:String = "Hello there!"
    var actionText:String = "Awesome"
    var body: some View {
        Text("")
        .alert(
            "Hello there!",
            isPresented: $isAlertVisible,
            actions: {
                Button("Awesome") {
                    print("Alret is closed")
                }
            },
            message: { Text ("""
your target is \(game.target)
your guess is \(Int(sliderValue.rounded()))
you collected \(game.points(sliderValue: Int(sliderValue.rounded()))) points this round
""") }
        )
    }
}

struct CustomAlert_Previews: PreviewProvider {
    @State static var sliderValue: Double = 35
    @State static var game: Game = Game()
    @State static var isAlertVisible: Bool = true

    static var previews: some View {
        AlertView(isAlertVisible: $isAlertVisible, sliderValue: $sliderValue, game: $game)
    }
}

