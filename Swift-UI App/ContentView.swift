//
//  ContentView.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .multilineTextAlignment(.center)
                .lineSpacing(10.0)
                .font(.footnote)
                .kerning(2.0)
                .bold()
            Text("89")
            HStack{
                Text("1")
                Slider(value: .constant(50), in: 1 ... 100)
                Text("100")
            }
            Button("Hit me") {
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
