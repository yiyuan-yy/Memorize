//
//  CardView.swift
//  Memorize
//
//  Created by yiyuan hu on 9/12/24.
//

import SwiftUI

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    //Views are immutabel
    var body: some View {
        ZStack {
            // local variables and type inference
            let base_rect = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp{
                base_rect.fill(.white)
                base_rect.strokeBorder(lineWidth: 2)
                Text("😜").font(.largeTitle)
            } else{
                base_rect.fill()
            }
          
        }
        .padding()
        .foregroundColor(.orange)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    CardView(isFaceUp: true)
}
