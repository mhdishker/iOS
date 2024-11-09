//
//  CustomSlider.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/8/24.
//

import SwiftUI

struct CustomSlider: View {
    var minimum: Double
    var maximum: Double
    @Binding var sliderValue:Double
    var body: some View {
        HStack{
            Text(String(Int(minimum))).bold()
                .foregroundColor(Color("TextColor"))
            Slider(value: $sliderValue, in: minimum ... maximum)
            Text(String(Int(maximum))).bold()
                .foregroundColor(Color("TextColor"))
        }.padding(.all)
    }
}

struct CustomSlider_Previews: PreviewProvider {
    @State static var previewSliderValue: Double = 35 // Initial value for the slider

    static var previews: some View {
        CustomSlider(minimum: 0, maximum: 100, sliderValue: $previewSliderValue)
    }
}
