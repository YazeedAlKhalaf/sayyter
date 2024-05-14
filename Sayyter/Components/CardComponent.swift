//
//  CardComponent.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 13/05/2024.
//

import SwiftUI

struct CardComponent: View {
    let card: Card
    
    init(card: Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            card.bgColor
            
            VStack(alignment: .leading) {
                Spacer()
                
                HStack {
                    Text("Balance")
                        .font(MyFonts.body)
                    Spacer()
                    Image("CardNfc")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                }
                
                Spacer()
                Spacer()
                
                Text(card.formattedBalance())
                    .font(MyFonts.headline)
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                HStack {
                    Image("Mastercard")
                    Text("•• \(card.last4Digits)")
                        .font(MyFonts.body)
                    Spacer()
                    Text(card.cardholderName)
                        .font(MyFonts.body)
                }
                
                Spacer()
            }
            .frame(height: 200)
            .padding()
            .foregroundColor(card.bgColor.contrastingTextColor())
        }
        .aspectRatio(1.8, contentMode: .fit)
        .frame(height: 220)
        .cornerRadius(32)
    }
}

#Preview {
    BackgroundView {
        CardComponent(
            card: Card(
                balance: 134583,
                currency: Currency(code: .SAR),
                last4Digits: "1342",
                cardholderName: "Yazeed AlKhalaf",
                bgColor: .jet
            )
        )
        .padding()
    }
}
