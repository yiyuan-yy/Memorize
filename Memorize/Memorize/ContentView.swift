//
//  ContentView.swift
//  Memorize
//
//  Created by yiyuan hu on 9/11/24.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["👀","👦","🥹","🤗","🥶"]
    //let emojis: [String] = ["👀","👦","🥹","🤗"]
    //let emojis: Array<String> = ["👀","👦","🥹","🤗"]
    
    var body: some View {
        HStack {
            // for each view
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index], isFaceUp: true)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
