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
            
            
            
            
            
//            for i in meals.indices{
//                meals[i].calories = false
//            }
            
            //print(meals)
        }
    }
    
    func createList() {
    
    }
}
