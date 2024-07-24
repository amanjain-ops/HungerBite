//
//  OrderPageView.swift
//  HungerBite
//
//  Created by Aman Jain on 01/08/24.
//

import SwiftUI

struct OrderPageView: View {
    var dishes: [Dish] = []
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<dishes.count , id: \.self) { index in
                    CartCardView(dish: dishes[index])
                }
            }
        }
    }
}

#Preview {
    OrderPageView(dishes: [.example1, .example3])
}


struct CartCardView: View {
    var dish: Dish
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
//                .shadow(radius: 5)
            
            HStack {
                VStack(alignment: .leading){
                    Text("\(dish.name)")
                        .font(.headline)
                    
                    Text("\(dish.price.formatted())")
                        .font(.headline)
                }
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green.mix(with: .white, by: 0.3))
                    HStack{
                        
                    }
                }
                .frame(width: 100, height: 40)
            }
        }
        .frame(width: 350, height: 200)
    }
}
