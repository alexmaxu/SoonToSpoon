//
//  Dish.swift
//  SoonToSpoon
//
//  Created by Alex  on 30/6/24.
//

import Foundation

struct Dish: Identifiable {
    var id = UUID()
    let name: String
    let ingredients: [Ingredient]
    let description: String
    let expiration: Date
}



enum Ingredient: String, CaseIterable, Identifiable {
    var id: Self {self}
    case apple = "Apple"
    case banana = "Banana"
    case carrot = "Carrot"
    case chicken = "Chicken"
    case beef = "Beef"
    case pork = "Pork"
    case fish = "Fish"
    case broccoli = "Broccoli"
    case tomato = "Tomato"
    case lettuce = "Lettuce"
    case potato = "Potato"
    case onion = "Onion"
    case garlic = "Garlic"
    case rice = "Rice"
    case pasta = "Pasta"
    case milk = "Milk"
    case cheese = "Cheese"
    case egg = "Egg"
    case bread = "Bread"
    case butter = "Butter"
    case yogurt = "Yogurt"
    case pepper = "Pepper"
    case salt = "Salt"
    case oliveOil = "Olive Oil"
    case vinegar = "Vinegar"
    case sugar = "Sugar"
    case flour = "Flour"
}
