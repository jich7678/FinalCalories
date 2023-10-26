//
//  FoodViewModel.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import Foundation

class FoodViewModel: ObservableObject {
    
    @Published var ingredients = [Ingredient]()
    
    func getIngredient() {
        Task { @MainActor in
            do {
                let url = URL(string: "https://www.themealdb.com/api/json/v1/1/list.php?i=list")!
                let (data, _) = try await URLSession.shared.data(from: url)
                print(data)
                ingredients = try JSONDecoder().decode([Ingredient].self, from: data)
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
