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
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                    .multilineTextAlignment(.center)
                    .lineSpacing(10.0)
                    .font(.footnote)
                    .kerning(2.0)
                    .bold()
                    .padding(.horizontal, 30)
                Text(String(game.target))
                    .font(.largeTitle)
                    .kerning(-1.0)
                    .fontWeight(.black)
                HStack{
                    Text("1").bold()
                    Slider(value: $sliderValue, in: 1 ... 100)
                    Text("100").bold()
                }.padding(.all)
                Button("Hit me".uppercased()) {
                    print("Alret is opened")
                    isAlertVisible = true
                }
                .bold()
                .font(.title3)
                .padding(21.0)
                .background(
                    ZStack{
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
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
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
