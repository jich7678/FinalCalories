//
//  TabView.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/2/23.
//

import SwiftUI

struct TabsView: View {
    
    @State private var lists: [CreatedList] = []
    var calc = Calculator(lists: [])
    
    func addList(allFoods: FoodViewModel){
        let newList = CreatedList(allFoods: allFoods)
        lists.append(newList)
        print(lists)
    }
    var body: some View {
        VStack {
            TabView {
                FoodList{i in addList(allFoods:i)}
                    .tabItem {
                        Label("Food", systemImage:"carrot")
                    }
                Calculator(lists: lists)
                    .tabItem {
                        Label("Calculator", systemImage:"plus.forwardslash.minus")
                    }
                MapView()
                    .tabItem {
                        Label("Map", systemImage:"map")
                    }
            }
        }
    }
}

#Preview {
    TabsView()
}
