//
//  Food.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import Foundation

struct Ingredient: Codable{
    var meals: [MealDetail]
}

struct MealDetail: Codable, Identifiable {
    var idIngredient: String
    var strIngredient: String
    var strDescription: String?
    var id: String { idIngredient }
}
