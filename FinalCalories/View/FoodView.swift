//
//  ContentView.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import SwiftUI

struct FoodView: View {
    
    @ObservedObject var foodViewModel = FoodViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Meal List")
                    .font(.title)
                    .padding(10)
                List(foodViewModel.ingredients) { ingredient in
                    VStack {
                        VStack(alignment: .leading) {
                            Text("\(ingredient.meals.idIngredient). \(ingredient.meals.strIngredient)")
                        }
                        Spacer()
                    }
                }
            }
        }
        .onAppear {
            foodViewModel.getIngredient()
        }
    }
}

#Preview {
    FoodView()
}
