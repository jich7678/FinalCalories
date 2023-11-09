//
//  Calculator.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/2/23.
//

import SwiftUI

struct Calculator: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("This is a permanent frame")
                    .font(.title)
                    .padding()
                NavigationLink(destination: ListDetailView()) {
                    Text("Show List")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

#Preview {
    Calculator()
}
