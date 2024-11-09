//
//  TextViews.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/8/24.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .multilineTextAlignment(.center)
            .lineSpacing(10.0)
            .font(.footnote)
            .kerning(2.0)
            .bold()
            .padding(.horizontal, 30)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var number: Int
    
    var body: some View {
        Text(String(number))
            .font(.largeTitle)
            .kerning(-1.0)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    VStack{
        InstructionText(text: "Instruction")
        BigNumberText(number: 10)
    }
}
