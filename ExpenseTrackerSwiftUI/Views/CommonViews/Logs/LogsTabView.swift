//
//  LogsTabView.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Tarokh on 9/28/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI
import CoreData

struct LogsTabView: View {
    
    @Environment(\.managedObjectContext)
        var context: NSManagedObjectContext
    
    @State private var searchText : String = ""
    @State private var searchBarHeight: CGFloat = 0
    @State private var sortType = SortType.date
    @State private var sortOrder = SortOrder.descending
    
    @State var selectedCategories: Set<Category> = Set()
    @State var isAddFormPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchBar(text: $searchText, keyboardHeight: $searchBarHeight, placeholder: "Search expenses")
                FilterCategoriesView(selectedCategories: $selectedCategories)
                Divider()
                SelectSortOrderView(sortType: $sortType, sortOrder: $sortOrder)
                Divider()
                LogListView(predicate: ExpenseLog.predicate(with: Array(selectedCategories), searchText: searchText), sortDescriptor: ExpenseLogSort(sortType: sortType, sortOrder: sortOrder).sortDescriptor)
            }
            .padding(.bottom, searchBarHeight)
            .sheet(isPresented: $isAddFormPresented) {
                LogsFormView(context: self.context)
            }
            .navigationBarItems(trailing: Button(action: addTapped) { Text("Add") })
            .navigationBarTitle("Expense Logs", displayMode: .inline)
        }
    }
    
    func addTapped() {
        isAddFormPresented = true
    }
    
    
    
}
