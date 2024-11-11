//
//  ContentView.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
                BigNumberText(number: game.target)
                CustomSlider(minimum: 0, maximum: 100, sliderValue: $sliderValue)
                SubmitButton(text: "Hit me"){ isAlertVisible = true }
                AlertView(isAlertVisible: $isAlertVisible, sliderValue: $sliderValue, game: $game)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

//#Preview {
//    ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
//}
