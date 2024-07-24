//
//  HomePageView.swift
//  HungerBite
//
//  Created by Aman Jain on 24/07/24.
//

import SwiftUI

struct HomePageView: View {
    var restaurantList = [
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
        Restaurants(id: UUID(), name: "Sai Chap Corner", tags: ["Pure Veg", "North Indian"], latitude: 51.501, longitude: 0.141, image: "https://b.zmtcdn.com/data/pictures/chains/7/103117/2e4949491fccc10940d499b566e67661_o2_featured_v2.jpg", dishes: [.example1, .example3]),
    ]
    
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                // Location and profile icon
                HStack(alignment: .center) {
                    Image(systemName: "location.fill")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.green)
                    
                    VStack(alignment: .leading){
                        HStack {
                            Text("Home Page")
                            Image(systemName: "chevron.left")
                                .rotationEffect(.degrees(-90))
                        }
                        Text("Your Address mbndfjcbjdsbkjndskandsn")
                            .lineLimit(1)
                            .foregroundStyle(.secondary)
                        
                    }
                    Spacer()
                    // profile icon
                    Circle()
                        .fill(.blue.opacity(0.2))
                        .frame(width: 51, height: 51)
                        .overlay{
                            Text("A")
                                .font(.title)
                                .bold()
                                .foregroundStyle(.blue)
                        }
                } // HStack Location
                
                //            Spacer()
                
                // Search bar
                
                ZStack(alignment: .leading) {
                    
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.white)
                        .shadow(radius: 1.5)
                    
                    HStack(alignment: .center) {
                        
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.green)
                            .padding(.horizontal, 15)
                        
                        
                        Text("Search Food")
                            .foregroundStyle(.secondary)
                            .bold()
                        
                        Spacer()
                        
                        Text("|")
                            .foregroundStyle(.secondary)
                        
                        Image(systemName: "mic")
                            .bold()
                            .foregroundStyle(.green)
                            .padding(.horizontal, 15)
                        
                    } // Hstack
                } // Zstack Search bar
                .frame(width: 350, height: 47)
                Spacer()
                
                ScrollView(showsIndicators: false) {
                    ForEach(0..<restaurantList.count, id: \.self) { index in
                        NavigationLink(destination: ReastaurantDetailsView(name: restaurantList[index].name, tags: restaurantList[index].tags, dishes: restaurantList[index].dishes)){
                            RestaurantCardView(restaurant: restaurantList[index])
                                .padding(.bottom, 10)
                                                                
                        }
                    }
                }
                
            } // Outer VStack
            .padding(.horizontal, 10)
            
        }
        
        
    }
}

#Preview {
    HomePageView()
}
