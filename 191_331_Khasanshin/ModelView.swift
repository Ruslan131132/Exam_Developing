
import Foundation


extension RangeExpression where Bound: FixedWidthInteger {
    func randomElements(_ n: Int) -> [Bound] {
        precondition(n > 0)
        switch self {
        case let range as Range<Bound>: return (0..<n).map { _ in .random(in: range) }
        case let range as ClosedRange<Bound>: return (0..<n).map { _ in .random(in: range) }
        default: return []
        }
    }
}

extension Range where Bound: FixedWidthInteger {
    var randomElement: Bound { .random(in: self) }
}

extension ClosedRange where Bound: FixedWidthInteger {
    var randomElement: Bound { .random(in: self) }
}

class Game {
    private var model: CardGame<Int> = Game.createMemoryGame()
    
    static func createMemoryGame() -> CardGame<Int> {
        
        let countOfCards = 9
        
        let randomElements = (-100...100).randomElements(countOfCards)
        
        return CardGame<Int>(numberOfCards: 9) {
            pairIndex in randomElements[pairIndex]
        }
    }
    
    // MARK: - Acces to model
    
    // this will expose cards from model to be used by the View (ContentView)
    var cards: Array<CardGame<Int>.Card> {
        model.cards
    }
    
    var pairs: Int {
        model.countOfCards
    }
    
    // MARK: - Intent(s)
    
    // this will expose methods to be used by the View to interact with the Model's cards
    func choose(card: CardGame<Int>.Card) {
        model.chooseCard(card: card)
    }
    
    func clear() {
        self.model = Game.createMemoryGame()
    }
}
