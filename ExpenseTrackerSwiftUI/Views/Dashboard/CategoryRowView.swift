//
//  CategoryRowView.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Tarokh on 9/28/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

struct CategoryRowView: View {
    
    // define some variables
    let category: Category
    let sum: Double
    
    var body: some View {
        HStack {
            CategoryImageView(category: category)
            Text(category.rawValue.capitalized)
            Spacer()
            Text(sum.formattedCurrencyText).font(.headline)
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView(category: .donation, sum: 2500)
    }
}
