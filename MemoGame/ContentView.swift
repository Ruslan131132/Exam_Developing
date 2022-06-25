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
       
    }
}

struct CardView: View {
    var card: CardGame<Int>.Card
    var countOfCards: Int
    
    var body: some View {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(game: Game())
    }
}
