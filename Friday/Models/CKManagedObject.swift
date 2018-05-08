//
//  CKManagedObject.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation
import CloudKit

protocol CKManagedObject {
    
    var record: CKRecord? { get set }
    
    mutating func createRecord()
    
}
