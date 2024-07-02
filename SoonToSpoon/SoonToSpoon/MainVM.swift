//
//  AddIngredient.swift
//  SoonToSpoon
//
//  Created by Alex  on 30/6/24.
//

import Foundation

final class MainVM: ObservableObject {
    @Published var ingredients: [Ingredient] = []
    @Published var pantry: [Ingredient] = []
    
    @Published var canCookList: [Dish] = []
    
    var dishes: [Dish] = [Dish(name: "Pizza", ingredients: [.cheese, .tomato, .flour], description: "Description example pizza", expiration: Date.now),Dish(name: "Macarrones", ingredients: [.pasta, .tomato, .cheese], description: "pasta description", expiration: Date.now)]
    
    @Published var ingredientTextField: String = ""
    
    func addToPantry() {
        pantry += ingredients
        ingredients = []
    }
    
    func addIngredient(ingredient: Ingredient) {
        ingredients.append(ingredient)
    }
    
    func canCook(dish: Dish) -> Bool {
        for ingredient in dish.ingredients {
            if pantry.contains(ingredient) {
                
            } else {
                return false
            }
        }
        return true
    }
    
    func addToCanCookList() {
        for dish in dishes {
            if canCook(dish: dish) {
                canCookList.append(dish)
            }
        }
    }
    
    func removeIngredient(ingredient: Ingredient) {
        if let index = ingredients.firstIndex(of: ingredient) {
            ingredients.remove(at: index)
        }
    }
}
