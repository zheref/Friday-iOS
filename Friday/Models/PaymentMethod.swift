//
//  MoneyPaymentMethod.swift
//  Friday
//
//  Created by Sergio Lozano García on 5/8/18.
//  Copyright © 2018 Sergio Lozano García. All rights reserved.
//

import Foundation

enum PaymentMethodType {
    
    case cashDirect
    case cashBank
    case cashThirdParty
    
    case atm
    
    case cardSwipe
    case cardChip
    case cardContactLess
    case cardNFC
    
    case presentApplePay
    case presentGoogleWallet
    case presentSamsungPay
    
    case onlinePSE
    case onlineCVV
    case onlineApplePay
    case onlineGoogleWallet
    case onlineSamsungPay
    
    case wireTransfer
    
}

enum PaymentWay {
    case automatic
    case manual
    case onDemand
}

struct PaymentMethod {
    
    var type: PaymentMethodType
    var way: PaymentWay = .manual
    var installments: Int8?
    
}
