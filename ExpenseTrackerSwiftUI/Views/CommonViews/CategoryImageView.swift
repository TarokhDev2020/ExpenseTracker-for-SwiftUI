//
//  CategoryImageView.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Tarokh on 9/28/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

struct CategoryImageView: View {
    
    // define some variables
    let category: Category
    
    var body: some View {
        Image(systemName: category.systemNameIcon)
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 20)
            .foregroundColor(category.color)
            .background(category.color.opacity(0.1))
        .cornerRadius(18)
    }
}

struct CategoryImageView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImageView(category: .donation)
    }
}
