//
//  createdList.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/30/23.
//


import SwiftUI

struct CreatedList: Identifiable {

    var foods: [FoodRow] = []
    var totCals: Int = 0
    var size: Int = 0
    var id: UUID = UUID()

    init(allFoods: FoodViewModel) {
        for meal in allFoods.meals {
            if meal.isFavorite ?? false {
                totCals = (meal.calories ?? 0) + totCals
                foods.append(FoodRow(foodViewModel: allFoods, food: meal))
            }
        }
        size = foods.count
    }
    
    
    var listView: some View {
            HStack {
                Text("\(id)")
                Spacer()
                Text("noshjdfhdsjkhfjkdsjhkfjhk")
                Text("\(totCals)")
            }
    }
}


    
    
