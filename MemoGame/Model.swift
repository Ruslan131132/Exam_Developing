//
//  Model.swift
//  MemoGame
//
//  Created by Danilo Miranda on 03/08/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import Foundation

// We will create a card game of strings -> CardGame<String>
// CardContent -> Type of content that the card will hold. Can be String, Int...
struct CardGame<CardContent> {
    var cards: Array<Card>
    var countOfCards: Int
    
    func chooseCard(card: Card) {
        print("Chosen card \(card)")
    }
    
    mutating func clear(newCards: [Int]) {
        for pairIndex in 0..<countOfCards {
            let content = newCards[pairIndex]
            
            // append two cards (a pair) to the array of cards
            cards.append(Card(content: content as! CardContent, id: pairIndex))
        }
        cards.shuffle()
    }
//    
    init(numberOfCards: Int, contentFactory: (Int) -> CardContent) {
        cards = []
        countOfCards = numberOfCards
        
        for pairIndex in 0..<numberOfCards {
            let content = contentFactory(pairIndex)
            
            // append two cards (a pair) to the array of cards
            cards.append(Card(content: content, id: pairIndex))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        
        var id: Int
        
        mutating func setContent(_ content: CardContent)
        {
            self.content = content
        }
    }
}
