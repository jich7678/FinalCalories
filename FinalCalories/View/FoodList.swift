//
//  ContentView.swift
//  FinalCalories
//
//  Created by Sam Chen on 10/26/23.
//

import SwiftUI

struct FoodList: View {
    @ObservedObject var foodViewModel = FoodViewModel()
    @State private var showFavoritesOnly = false
    @State private var inputID = ""
    var callback: (FoodViewModel) -> Void

    var filteredFoods: [Food] {
        foodViewModel.meals.filter { food in
            (!showFavoritesOnly || (food.isFavorite == true))
        }
    }
    var searchResults: [Food] {
        if inputID.isEmpty {
            return filteredFoods
        } else {
            return filteredFoods.filter { $0.strIngredient.contains(inputID) }
        }
    }
    var body: some View {
        //let _ = print(foodViewModel.meals)
        NavigationSplitView {
            List {
                
                    
                
                   Button(action:{
                      callback(foodViewModel)
                    }, label: {
                        Text("Create List")

                    })
        
                Toggle(isOn: $showFavoritesOnly) {
                    Text("My Favorites")
                }

                ForEach(searchResults) { food in
                    FoodRow(foodViewModel: foodViewModel,food: food)
                }
                

            }
            .navigationTitle("Foods")
            
        } detail: {
            Text("Select a Food")
        }
        .searchable(text: $inputID, prompt: "Search")
        .onAppear {
            foodViewModel.getIngredient()
        }
        
//        NavigationView {
//            VStack {
//                Text("Meal List")
//                    .font(.title)
//                    .padding(10)
//                List(foodViewModel.meals) { ingredient in
//                    VStack {
//                        VStack(alignment: .leading) {
//                            Text("\(ingredient.idIngredient). \(ingredient.strIngredient)")
//                        }
//                        Spacer()
//                    }
//                }
//            }
//        }
    }
}

