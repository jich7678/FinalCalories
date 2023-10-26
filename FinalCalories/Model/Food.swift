//
//  Food.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import Foundation

struct Ingredient: Codable, Identifiable {
    var id: Int { return UUID().hashValue }
    var meals: Categories
}

struct Categories: Codable {
    var idIngredient: String
    var strIngredient: String
    var strDescription: String
}
