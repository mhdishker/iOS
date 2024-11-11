//
//  BackgroundView.swift
//  Swift-UI App
//
//  Created by Mohammad Ishker on 11/11/24.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(Color("BackgroundColor"))
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack( content: {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        })
    }
}
struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack( content: {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        })
    }
}
struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 5.0){
            Text(title)
                .font(.subheadline)
                .foregroundColor(Color("TextColor"))
            RoundedImageTextViewStroked(text: text)
            
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {

    @State static var game: Game = Game()

    static var previews: some View {
        BackgroundView(game: $game)
    }
}
