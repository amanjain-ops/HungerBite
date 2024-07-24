//
//  RestaurantCardView.swift
//  HungerBite
//
//  Created by Aman Jain on 24/07/24.
//

import SwiftUI

struct RestaurantCardView: View {
    
    var restaurant: Restaurants
    
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 39)
                .fill(.white)
                .shadow(color: .gray.opacity(0.3), radius: 4, y: 3)
            
            VStack(alignment: .leading){
                AsyncImage(url: URL(string: restaurant.image)) { image in
                    image.image?
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .clipShape(.rect(topLeadingRadius: 40, topTrailingRadius: 40))
                }
                Spacer()
                Text(restaurant.name)
                    .font(.title)
                    .foregroundColor(.black.opacity(0.9))
                    .bold()
                    .padding(.horizontal, 16)
                    .padding(.bottom, 5)
                
                
                HStack {
                    ForEach(restaurant.tags, id: \.self) { tag in
                        Text(tag)
                            .foregroundStyle(.secondary)
                            
                            .bold()
                    }
                    .padding(.horizontal, 5)
                } //Hstack
                .padding(.horizontal, 15)
                
                Spacer()
                
            } // VStack
        } // ZStack
        .frame(width: 380, height: 340)
//        .border(.red)
    }
}

#Preview {
    RestaurantCardView(restaurant: .example)
}
