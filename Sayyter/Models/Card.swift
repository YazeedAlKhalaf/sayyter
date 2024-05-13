//
//  Card.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import Foundation

class Card {
    let balance: Int64
    let currency: Currency
    let last4Digits: String
    let cardholderName: String
    
    init?(balance: Int64, currencyCode: String, last4Digits: String, cardholderName: String) {
        guard let currency = Currency(code: currencyCode) else {
            return nil
        }
        self.balance = balance
        self.currency = currency
        self.last4Digits = last4Digits
        self.cardholderName = cardholderName
    }
    
    init(balance: Int64, currency: Currency, last4Digits: String, cardholderName: String) {
        self.balance = balance
        self.currency = currency
        self.last4Digits = last4Digits
        self.cardholderName = cardholderName
    }
    
    func formattedBalance() -> String {
        return currency.format(amount: balance)
    }
}
