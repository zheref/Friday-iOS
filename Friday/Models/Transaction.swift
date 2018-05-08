//
//  Transaction.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation

enum TransactionStatus {
    case expecting
    case pending
    case complete
}

struct Transaction {
    
    var dateAdded: Date

    var origin: MoneyHolder
    var destination: MoneyHolder
    
    var concept: TransactionConcept
    var method: PaymentMethod
    var status: TransactionStatus
    
    var expectedAmount: Money
    var actualAmount: Money?
    
    var expectedDate: Date
    var actualDate: Date?
    
    var thumbnailPic: URL?
    var pics: [URL]
    
}
