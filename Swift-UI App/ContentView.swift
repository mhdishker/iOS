//
//  ContentView.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible: Bool = false
    @State private var sliderValue: Double = 50
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .multilineTextAlignment(.center)
                .lineSpacing(10.0)
                .font(.footnote)
                .kerning(2.0)
                .bold()
            Text(String(Int(sliderValue.rounded())))
                .font(.largeTitle)
                .kerning(-1.0)
                .fontWeight(.black)
            HStack{
                Text("1").bold()
                Slider(value: $sliderValue, in: 1 ... 100)
                Text("100").bold()
            }
            Button("Hit me") {
                print("Alret is opened")
                isAlertVisible = true
            }
            .alert(
                "Hello there!",
                isPresented: $isAlertVisible,
                actions: {
                    Button("Awesome") {
                        print("Alret is closed")
                    }
                },
                message: { Text ("something is happening") }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
