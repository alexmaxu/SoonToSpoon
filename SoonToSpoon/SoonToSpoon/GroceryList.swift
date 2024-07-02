//
//  GroceryList.swift
//  SoonToSpoon
//
//  Created by Alex  on 1/7/24.
//

import SwiftUI

struct GroceryList: View {
    @EnvironmentObject var mainVM: MainVM
    var body: some View {
        NavigationStack {
            VStack {
                Text("Your Pantry:")
                    .font(.title3)
                    .padding(.top)
                Group {
                    if mainVM.pantry.isEmpty {
                        VStack {
                            Text("Empty pantry")
                            Image(systemName: "book")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        }
                        .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(Color.orange.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
                    } else {
                        List {
                            ForEach(mainVM.pantry) { ingredient in
                                Text(ingredient.rawValue)
                            }
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                        
                    }
                }
//                .frame(height: 300)
                Text("Available Dishes:")
                    .font(.title3)
                    .padding(.top)
                Group {
                    if mainVM.canCookList.isEmpty {
                        VStack {
                            Text("Unavailabe dishes")
                            Image(systemName: "book")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .background(Color.orange.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                    } else {
                        List {
                            ForEach(mainVM.canCookList) { dish in
                                Text(dish.name)
                            }
                        }
                        
                    }
                }
//                .frame(height: 200)
                Spacer()
                Button {
                    mainVM.canCookList.removeAll()
                    mainVM.addToCanCookList()
                } label: {
                    Text("Dish Generator ")
                        .bold()
                        .frame(maxWidth: 200)
                        .frame(height: 50)
                        .background(Color.orange.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 3)
                                .fill(.orange.opacity(1))
                        }
                        .padding()
                        .tint(.black)
                }
                NavigationLink {
                    AddIngredientView()
                } label: {
                    Text("Add ingredients + ")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.orange.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 3)
                                .fill(.orange.opacity(1))
                        }
                        .padding()
                        .tint(.black)
                }
            }
            .gradientBackground(opacity1: 0.1, opacity2: 0.4)
        }
    }
}

#Preview {
    GroceryList()
        .environmentObject(MainVM())
}
