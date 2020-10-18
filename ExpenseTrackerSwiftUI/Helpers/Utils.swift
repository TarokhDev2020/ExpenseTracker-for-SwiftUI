//
//  Utils.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Tarokh on 9/28/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation

struct Utils {
    
    static let dateFormatter: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.isLenient = false
        formatter.numberStyle = .currency
        return formatter
    }()
    
}
