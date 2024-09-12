//
//  CardView.swift
//  Memorize
//
//  Created by yiyuan hu on 9/12/24.
//

import SwiftUI

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    //Views are immutabel
    var body: some View {
        ZStack {
            // local variables and type inference
            let base_rect = RoundedRectangle(cornerRadius: 12)
            Group {
                base_rect.fill(.white)
                base_rect.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base_rect.fill().opacity(isFaceUp ? 0 : 1)
        }
        .foregroundColor(.orange)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    CardView(content: "👀", isFaceUp: true)
}
