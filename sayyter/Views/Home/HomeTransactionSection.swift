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
                VStack {
                    TransactionTile(
                        transaction: transactions[index]
                    ) {
                        print("\(transactions[index].title) tile clicked!")
                    }
                    if index + 1 <= transactions.count - 1 {
                        Divider()
                    }
                }
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
