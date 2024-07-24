//
//  ContentView.swift
//  HungerBite
//
//  Created by Aman Jain on 24/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePageView()
                .tabItem {
                    Label("Delivery", systemImage: "truck.box")
                        .foregroundStyle(.green)
                }
            RestaurantCardView(restaurant: .example)
                .tabItem {
                    Label("Favourite", systemImage: "bookmark")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
