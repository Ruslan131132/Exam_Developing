//
//  ContentView.swift
//  MemoGame
//
//  Created by Danilo Miranda on 01/08/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var game: Game
    @State private var showDetails = false
    
    var body: some View {
        VStack(alignment: .leading) {
           
        }
        HStack {
            ForEach(game.cards) { card in
                CardView(card: card, countOfCards: self.game.pairs).onTapGesture {
                    self.game.choose(card: card)
                    }.aspectRatio(0.66, contentMode: .fit)
            }
        }.padding(10)
    }
}

struct CardView: View {
    var card: CardGame<Int>.Card
    var countOfCards: Int
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke().fill(Color.orange)
                Text("\(card.content)").font(Font.caption)
            } else {
                RoundedRectangle(cornerRadius: 10).foregroundColor(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(game: Game())
    }
}
