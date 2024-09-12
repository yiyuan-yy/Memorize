//
//  CardView.swift
//  Memorize
//
//  Created by yiyuan hu on 9/12/24.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
               
                Text("😜")
                    .font(.largeTitle)
            } else{
                Rectangle()
            }
          
        }
        .padding()
        .foregroundColor(.orange)
    }
}

#Preview {
    CardView(isFaceUp: true)
}
