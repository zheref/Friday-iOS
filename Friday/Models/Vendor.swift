//
//  Vendor.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation
import CloudKit

struct Vendor : MoneyHolder, CKManagedObject {
    
    // MARK: Managed Properties
    
    var name: String
    var legalName: String?
    var contactName: String?
    var phoneNumber: String?
    var email: String?
    var website: String?
    
    var pic: Data?
    
    var record: CKRecord?
    
    func createRecord() {
        
    }
    
}
