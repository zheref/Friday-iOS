//
//  TransactionConcept.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation

struct TransactionConcept {
    
    var name: String
    var originalMarketValue: Money
    var parameters: [String: Any?]
    
    var category: TransactionCategory?
    
}
