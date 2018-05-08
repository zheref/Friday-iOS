//
//  MoneySource.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation
import CloudKit

struct MoneySource : MoneyHolder, CKManagedObject {
    
    static let recordType = "MoneySource"
    
    // MARK: Managed Properties
    
    var name: String
    var currentBalance: Money
    
    // MARK: Foreign Properties
    
    var transactions: [Transaction]
    
    // MARK: Meta Properties
    
    var record: CKRecord?
    
    // MARK: Computed Properties
    
    // MARK: Operations
    
    mutating func createRecord() {
        record = CKRecord(recordType: MoneySource.recordType)
        
        record?.setValue(name, forKey: "name")
        record?.setValue(currentBalance.value, forKey: "currentBalance.value")
        record?.setValue(currentBalance.currency.acronym, forKey: "currentBalance.currency")
    }
    
}
