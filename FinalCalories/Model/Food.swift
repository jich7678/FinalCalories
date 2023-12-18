//
//  Food.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import Foundation

struct Ingredient: Codable{
    var meals: [Food]
}

struct Food: Codable, Identifiable {
    var idIngredient: String
    var strIngredient: String
    var strDescription: String?
    var id: String { idIngredient }
    var isFavorite: Bool?
    var calories: Int?
}
struct jsonData:Decodable{
    let meals: [meal]
}
struct meal: Decodable{
    let name: String
    let calories: Int
}

//extension Bundle {
//    func decode<T: Decodable>(file: String) -> T {
//        guard let url = self.url(forResource: file, withExtension: nil) else {
//            fatalError("Could not find \(file) in the project!")
//        }
//        
//        guard let data = try Data(contentesOf: url) else {
//            fatalError("Could not load \(file) in the project!")
//        }
//        
//        let decoder = JSONDecoder()
//        
//        
//    }
//}
