//
//  Currency.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import Foundation

enum CurrencyCode: String {
    case SAR = "682"
    case USD = "840"
}

class Currency {
    let code: CurrencyCode
    let symbol: String
    let factor: Decimal
    
    init?(code: String) {
        guard let currencyCode = CurrencyCode(rawValue: code) else {
            return nil
        }
        self.code = currencyCode
        self.symbol = Currency.getSymbol(for: currencyCode)
        self.factor = Currency.getFactor(for: currencyCode)
    }
    
    init(code: CurrencyCode) {
        self.code = code
        self.symbol = Currency.getSymbol(for: code)
        self.factor = Currency.getFactor(for: code)
    }
    
    static func getSymbol(for code: CurrencyCode) -> String {
        switch code {
        case .SAR:
            return "SAR"
        case .USD:
            return "$"
        }
    }
    
    static func getFactor(for code: CurrencyCode) -> Decimal {
        switch code {
        case .SAR:
            return Decimal(100) // 1 SAR = 100 halalas
        case .USD:
            return Decimal(100) // 1 USD = 100 cents
        }
    }
    
    func format(amount: Int64) -> String {
        let decimalAmount = Decimal(amount) / factor
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.currencySymbol = symbol
        numberFormatter.maximumFractionDigits = 2
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.currencyGroupingSeparator = ","
        if let formattedAmount = numberFormatter.string(from: NSDecimalNumber(decimal: decimalAmount)) {
            return formattedAmount
        } else {
            return "\(symbol) \(NSDecimalNumber(decimal: decimalAmount).doubleValue)"
        }
    }
}
