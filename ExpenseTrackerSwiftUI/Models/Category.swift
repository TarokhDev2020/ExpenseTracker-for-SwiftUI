//
//  Category.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Tarokh on 9/28/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable {
    
    // define some variables
    case donation
    case food
    case entertainment
    case health
    case shopping
    case transportaion
    case utilities
    case other
    
    var systemNameIcon: String {
        switch self {
        case .donation:
            return "heart.circle.fill"
        case .food:
            return "archivebox"
        case .entertainment:
            return "tv.music.note"
        case .health:
            return "staroflife"
        case .shopping:
            return "cart"
        case .transportaion:
            return "cart"
        case .utilities:
            return "bolt"
        case .other:
            return "tag"
        }
    }
    
    var color: Color {
        switch self {
        case .donation:
            return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case .food:
            return Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        case .entertainment:
            return Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
        case .health:
            return Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        case .shopping:
            return Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        case .transportaion:
            return Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        case .utilities:
            return Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case .other:
            return Color(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1))
        }
    }
}

extension Category: Identifiable {
    var id: String { rawValue }
}

