//
//  TabView.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/2/23.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        VStack {
            TabView {
                FoodList()
                    .tabItem {
                        Label("Food", systemImage:"carrot")
                    }
                Calculator()
                    .tabItem {
                        Label("Calculator", systemImage:"plus.forwardslash.minus")
                    }
                Map()
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
