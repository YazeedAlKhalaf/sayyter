//
//  Card.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI

class Card {
    let balance: Int64
    let currency: Currency
    let last4Digits: String
    let cardholderName: String
    let bgColor: Color
    
    init?(balance: Int64, currencyCode: String, last4Digits: String, cardholderName: String, bgColor: Color) {
        guard let currency = Currency(code: currencyCode) else {
            return nil
        }
        self.balance = balance
        self.currency = currency
        self.last4Digits = last4Digits
        self.cardholderName = cardholderName
        self.bgColor = bgColor
    }
    
    init(balance: Int64, currency: Currency, last4Digits: String, cardholderName: String, bgColor: Color) {
        self.balance = balance
        self.currency = currency
        self.last4Digits = last4Digits
        self.cardholderName = cardholderName
        self.bgColor = bgColor
    }
    
    func formattedBalance() -> String {
        return currency.format(amount: balance)
    }
}
