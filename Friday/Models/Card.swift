//
//  Card.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation
import CloudKit

enum CardType : String {
    case credit
    case debit
    case prepaid
}

enum CardBrand : String {
    case masterCard
    case visa
    case americanExpress
    case dinersClub
    case discover
    case maestro
    case cirrus
}

enum CardStatus : String {
    case inactive
    case active
    case terminated
    case expired
}

struct Card : MoneyHolder, CKManagedObject {
    
    static let recordType = "Card"
    
    // MARK: Managed Properties
    
    var name: String
    
    var availableSpace: Money
    var availableToWithdraw: Money?
    
    var type: CardType
    var brand: CardBrand
    var status: CardStatus
    
    var number: String
    var cvv: String
    
    var validFrom: Date?
    var validThrou: Date
    
    var issuingBank: Vendor
    
    // MARK: Foreign Properties
    
    var transactions: [Transaction]
    
    // MARK: Meta Properties
    
    var record: CKRecord?
    
    // MARK: Computed Properties
    
    // MARK: Operations
    
    mutating func createRecord() {
        record = CKRecord(recordType: Card.recordType)
        
        record?.setValue(name, forKey: "name")
        
        record?.setValue(availableSpace.value, forKey: "availableSpace.value")
        record?.setValue(availableSpace.currency.acronym, forKey: "availableSpace.currency")
        
        if let availableToWithdraw = availableToWithdraw {
            record?.setValue(availableToWithdraw.value, forKey: "availableToWithdraw.value")
            record?.setValue(availableToWithdraw.currency.acronym, forKey: "availableToWithdraw.currency")
        }
        
        record?.setValue(type.rawValue, forKey: "type")
        record?.setValue(brand.rawValue, forKey: "brand")
        record?.setValue(status.rawValue, forKey: "status")
        
        record?.setValue(number, forKey: "number")
        record?.setValue(cvv, forKey: "cvv")
        
        record?.setValue(validFrom, forKey: "validFrom")
        record?.setValue(validThrou, forKey: "validThrou")
        
        if let issuingBankRecord = issuingBank.record {
            let reference = CKReference(record: issuingBankRecord, action: .none)
            record?.setObject(reference, forKey: "issuingBank")
        }
    }
    
}
