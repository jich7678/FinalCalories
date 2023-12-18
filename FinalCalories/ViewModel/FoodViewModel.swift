//
//  FoodViewModel.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import Foundation

class FoodViewModel: ObservableObject {
    
    @Published var meals = [Food]()
    
    func getIngredient() {
        Task { @MainActor in
            do {
                let url = URL(string: "https://www.themealdb.com/api/json/v1/1/list.php?i=list")!
                let (data, _) = try await URLSession.shared.data(from: url)
                //print(data)
                let ingredients = try JSONDecoder().decode(Ingredient.self, from: data)
                //print(ingredients.meals[0])
                meals = ingredients.meals
                
                
            } catch {
                print("Error: \(error.localizedDescription)")
            }
            for i in meals.indices{
                meals[i].isFavorite = false
            }
        }
     //getJSON()
    }
    
//    func getJSON() {
//                
//                if let filePath = Bundle.main.path(forResource: "caloriesList", ofType: "json"),
//                let fileUrl = URL(fileURLWithPath: filePath)
//                print(fileUrl)
//                let data = try Data(contentsOf: fileUrl)
//                
//                let url = Bundle.main.url(forResource: "caloriesList", withExtension: "json")!
//                let (data, _) = try await URLSession.shared.data(from: url)
//                print(data)
//                let ingredients = try JSONDecoder().decode(Ingredient.self, from: data)
//                print(ingredients.meals[0])
//                meals = ingredients.meals
//    }
    
//    func loadLocalJson(filename fileName: String) -> [Person]? {
//        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
//            do {
//                let data = try Data(contentsOf: url)
//                let decoder = JSONDecoder()
//                let jsonData = try decoder.decode(ResponseData.self, from: data)
//                return jsonData.person
//            } catch {
//                print("error:\(error)")
//            }
//        }
//        return nil
//    }
    
    func createList() {
    
    }
}
