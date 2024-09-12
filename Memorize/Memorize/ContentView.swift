//
//  ContentView.swift
//  Memorize
//
//  Created by yiyuan hu on 9/11/24.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["👀","👦","🥹","🤗","🥶","🧚🏻‍♀️", "👗", "🐥","🐙","🐠","🐓","🎍"]
    //let emojis: [String] = ["👀","👦","🥹","🤗"]
    //let emojis: Array<String> = ["👀","👦","🥹","🤗"]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            ScrollView{
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        // Three columns of grid
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120, maximum: 360))]) {
            // for each view
            ForEach(0..<cardCount, id: \.self){ index in
                CardView(content: emojis[index], isFaceUp: true)
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardCountAdjuster(by: -1, symbol: "rectangle.stack.fill.badge.minus")
            Spacer()
            cardCountAdjuster(by: 1, symbol: "rectangle.stack.fill.badge.plus")
        }
        .padding()
        .font(.largeTitle)
        .imageScale(.large)
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    
}

#Preview {
    ContentView()
}
