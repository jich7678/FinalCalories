//
//  FoodRow.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/2/23.
//


import SwiftUI

struct FoodRow: View {
    var foodViewModel: FoodViewModel
    var food: Food
    
    var CurrIndex: Int {foodViewModel.meals.firstIndex(where: { $0.id == food.id })!}
    
    var body: some View {
       @ObservedObject var foodViewModel = foodViewModel
            HStack {
                Text("\(food.idIngredient). \(food.strIngredient)")
                Spacer()
                FavoriteButton(isSet: Binding($foodViewModel.meals[CurrIndex].isFavorite)!)
                //                if food.isFavorite == true {
                //                    Image(systemName: "star.fill")
                //                        .foregroundStyle(.yellow)
                //                    }
            }
    }
}
    
    //#Preview {
    //    let foods = FoodViewModel().meals
    //    return FoodRow(food: foods[0])
    //}
    
