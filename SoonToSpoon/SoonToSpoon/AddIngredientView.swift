//
//  ContentView.swift
//  SoonToSpoon
//
//  Created by Alex  on 30/6/24.
//

import SwiftUI

struct AddIngredientView: View {
    @EnvironmentObject var mainVM: MainVM
    @Environment(\.dismiss) var dismiss
    @State var showSeet = false
    var body: some View {
        VStack {
            Button {
                mainVM.addToCanCookList()
                showSeet.toggle()
            } label: {
                Text("Show sheet")
            }
            Text("Grocery")
            List {
                    ForEach(mainVM.ingredients) { ingredient in
                        Button {
                            mainVM.removeIngredient(ingredient: ingredient)
                        } label: {
                            Text(ingredient.rawValue)
                        }
                        .tint(.black)
                    }
            }
            .frame(height: 300)
            Button {
                mainVM.addToPantry()
                dismiss
            } label: {
                Text("Add To Pantry")
            }
            
            Text("Ingredients:")
            List {
                    ForEach(Ingredient.allCases) { ingredient in
                        Button {
                            mainVM.addIngredient(ingredient: ingredient)
                        } label: {
                            Text(ingredient.rawValue)
                        }
                        .tint(.black)
                    }
            }
        }
        .sheet(isPresented: $showSeet) {
            if !mainVM.canCookList.isEmpty {
                ForEach(mainVM.canCookList) { dish in
                    Text(dish.name)
                }
            } else {
                Text("Empty Dish List")
            }
        }
        
    }
}

#Preview {
    AddIngredientView()
        .environmentObject(MainVM())
}
