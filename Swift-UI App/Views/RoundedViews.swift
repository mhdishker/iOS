//
//  RoundedViews.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/11/24.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .frame(width: 56, height: 56)
            .background(Circle().fill(Color("ImageFilledBackground")))
            .overlay(
                Circle()
                    .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ImageStroke"))
            )
            .foregroundColor(Color("ImageFilledForeground"))
            
    }
}


struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .frame(width: 56, height: 56)
            .overlay(
                Circle()
                    .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ImageStroke"))
            )
            .foregroundColor(Color("ImageForeground"))
    }
}


struct PreviewView: View {
    var body: some View{
        VStack(spacing: 10, content: {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
        })
    }
}

#Preview {
    PreviewView()
}
