//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Y K on 27.02.2024.
//

import SwiftUI

struct ContentView: View {
    var cards: [Card] = cardData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}




#Preview {
    ContentView(cards: cardData)
}
