//
//  HomeTransactionSection.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI

struct HomeTransactionSection: View {
    let transactions: [Transaction]
    
    init(transactions: [Transaction]) {
        self.transactions = transactions
    }
    
    var body: some View {
        VStack {
            ForEach(transactions.indices, id: \.self) { index in
                TransactionTile(
                    transaction: transactions[index]
                )
            }
        }
    }
}

#Preview {
    BackgroundView {
        HomeTransactionSection(
            transactions: recentTransactions
        )
        .padding()
    }
}
