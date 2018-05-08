//
//  Currency.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation

enum CurrencyWrapping {
    case acronym
    case symbol
}

enum Currency : String {
    
    case usd
    case gbd
    case eur
    case cop
    case mxn
    case sek
    
    var acronym: String {
        switch self {
        case .usd:
            return "USD"
        case .gbd:
            return "GBD"
        case .eur:
            return "EUR"
        case .cop:
            return "COP"
        case .mxn:
            return "MXN"
        case .sek:
            return "SEK"
        }
    }
    
    func wrap(money: Money,
              with style: CurrencyWrapping = .acronym,
              gettingRidOfThousands: Bool = false) -> String {
        
        switch self {
        case .usd:
            return "\(money.value) \(acronym)"
        default:
            return "\(money.value)"
        }
    }
    
}
