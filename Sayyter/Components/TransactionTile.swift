//
//  TransactionTile.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI
import SFSafeSymbols

struct TransactionTile: View {
    let transaction: Transaction
    
    init(transaction: Transaction) {
        self.transaction = transaction
    }
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: transaction.logoUrl)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    case .failure:
                        Image(systemName: "xmark.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(width: 44, height: 44)
                .cornerRadius(999)
            }
            
            Spacer().frame(width: 16)
            
            VStack(alignment: .leading) {
                Text(transaction.title)
                    .font(MyFonts.body)
                Text(formattedDate(transaction.date))
                    .font(MyFonts.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(transaction.formattedAmount())
            }
        }
    }
    
    func formattedDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, h:mm a"
        return dateFormatter.string(from: date)
    }
}

#Preview {
    BackgroundView {
        TransactionTile(
            transaction: Transaction(
                logoUrl: "https://erbut.me/utils/pfp.jpeg",
                title: "Erbut",
                date: Date.now,
                amount: 1999,
                currency: sarCurrency
            )
        )
        .padding()
    }
}
