//
//  SubmitButton.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/8/24.
//

import SwiftUI

struct SubmitButton: View {
    var text: String
    var action: () -> Void // Closure for button action

    var body: some View {
        Button(action: action, label: {
                Text(text.uppercased())
        })
        .bold()
        .font(.title3)
        .padding(21.0)
        .background(
            ZStack{
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .overlay(
            RoundedRectangle(cornerRadius: 21)
                .strokeBorder(lineWidth: 5.0)
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
    }
}

#Preview {
    SubmitButton(text: "click",action: {})
}
