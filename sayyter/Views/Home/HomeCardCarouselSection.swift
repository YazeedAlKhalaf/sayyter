//
//  HomeCardCarouselSection.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI

struct HomeCardCarouselSection: View {
    let cards: [Card]
    
    init(cards: [Card]) {
        self.cards = cards
    }
    
    var body: some View {
        TabView {
            ForEach(cards.indices, id: \.self) { index in
                CardComponent(card: cards[index])
                    .padding(.horizontal, 24)
            }
        }
        .frame(height: 270)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    BackgroundView {
        HomeCardCarouselSection(
            cards: cards
        )
    }
}
