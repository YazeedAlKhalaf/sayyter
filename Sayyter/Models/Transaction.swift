//
//  Transaction.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import Foundation

class Transaction {
    let logoUrl: String
    let title: String
    let date: Date
    let amount: Int64
    let currency: Currency
    
    init?(logoUrl: String, title: String, date: Date, amount: Int64, currencyCode: String) {
        guard let currency = Currency(code: currencyCode) else {
            return nil
        }
        self.logoUrl = logoUrl
        self.title = title
        self.date = date
        self.amount = amount
        self.currency = currency
    }
    
    init(logoUrl: String, title: String, date: Date, amount: Int64, currency: Currency) {
        self.logoUrl = logoUrl
        self.title = title
        self.date = date
        self.amount = amount
        self.currency = currency
    }
    
    func formattedAmount() -> String {
        return currency.format(amount: amount)
    }
}
