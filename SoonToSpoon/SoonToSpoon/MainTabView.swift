//
//  MainTabView.swift
//  SoonToSpoon
//
//  Created by Alex  on 1/7/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            AddIngredientView()
                .tabItem {
                    Label("Add Ingredients", systemImage: "iphone")
                }
            GroceryList()
                .tabItem {
                    Label("List", systemImage: "square")
                }
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(MainVM())
    
}
