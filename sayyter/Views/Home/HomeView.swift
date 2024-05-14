//
//  HomeView.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 13/05/2024.
//

import SwiftUI
import SFSafeSymbols

let sarCurrency = Currency(code: .SAR)
let usdCurrency = Currency(code: .USD)

let cards: [Card] = [
    Card(
        balance: 1052415,
        currency: sarCurrency,
        last4Digits: "9124",
        cardholderName: "Carl Sanders",
        bgColor: .maize
    ),
    Card(
        balance: 30068,
        currency: usdCurrency,
        last4Digits: "7315",
        cardholderName: "Carl Sanders",
        bgColor: .jet
    )
]
let recentTransactions: [Transaction] = [
    Transaction(
        logoUrl: "https://i.ibb.co/bF0yYt5/erbut-logo-with-white.png",
        title: "Erbut",
        date: Date.now,
        amount: 1999,
        currency: sarCurrency
    ),
    Transaction(
        logoUrl: "https://i.ibb.co/kBrwKLX/the-logo.png",
        title: "Al Yamamah University",
        date: Date.now,
        amount: 7000000,
        currency: sarCurrency
    )
]

struct HomeView: View {
    var body: some View {
        BackgroundView(layout: .vertical) {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 16) {
                        HomeHeaderSection()
                            .padding(.horizontal, 24)
                        
                        HomeCardsHeaderSection()
                            .padding(.horizontal, 24)
                        
                        HomeCardCarouselSection(cards: cards)
                            .padding(.top, -16)
                        
                        HomeCardActionsSection()
                            .padding(.horizontal, 24)
                        
                        HomeTransactionHeaderSection()
                            .padding(.horizontal, 24)
                        
                        HomeTransactionSection(transactions: recentTransactions)
                            .padding(.horizontal, 24)
                    }
                }
                
                GradientBlurView()
            }
        }
        .safeAreaPadding(.vertical, 24)
    }
}

#Preview {
    HomeView()
}
