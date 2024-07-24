//
//  ReastaurantDetailsView.swift
//  HungerBite
//
//  Created by Aman Jain on 24/07/24.
//

import SwiftUI

struct ReastaurantDetailsView: View {
    
    let name: String
    let tags: [String]
    let dishes: [Dish]
    
    @State private var numberOfDishes = [Dish]()
    @State private var showingBottomBar = false
    @State private var numberOfOrderItem = 0
    var body: some View {
        NavigationStack {
            ZStack {
//                VStack {
                    ScrollView {
                        
                        VStack {
                            VStack {
                                Text(name)
                                    .font(.largeTitle)
                                    .bold()
                                HStack {
                                    ForEach(0..<tags.count, id: \.self) { index in
                                        Text(tags[index])
                                            .padding(.horizontal, 3)
                                    }
                                }
                                Spacer()
                            } //Inner Vstack
                            .frame(maxWidth: .infinity, minHeight: 200)
                            .padding(.top, 10)
                            
                            // showing dishes
                            ForEach(0..<dishes.count, id: \.self) { index in
                                
                                DishCardView(dish: dishes[index], NumberOfDishes: $numberOfDishes)
                                
                            }
                            
                            
                            ForEach(0..<numberOfDishes.count, id: \.self) { index in
                                
                                Text("\(numberOfDishes[index].numberOfOrders)")
                                
                            }
                        } // outer Vstack
                        .toolbar(.hidden, for: .tabBar)
                        .toolbar{
                            ToolbarItemGroup(placement: .navigationBarTrailing) {
                                HStack(alignment: .bottom, spacing: 13){
                                    Image(systemName: "magnifyingglass")
                                    Image(systemName: "heart")
                                    Image(systemName: "square.and.arrow.up")
                                }
                                .font(.title3)
                            }
                        }
                        
                    }
//                }
                // bottombar
                VStack {
                    Spacer()
                    if numberOfDishes.count >= 1 {
                        
                        NavigationLink(destination: OrderPageView()) {
                            CustomBottomBar(orderNumber: numberOfDishes.count)
                        }
                        
                    }
                }
            }// scrollview
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}

#Preview {
    ReastaurantDetailsView(name: "Mama's Paratha", tags: ["North Indian", "Sandwiches", "Fast Food"], dishes: [.example1, .example3, .example4])
}


struct CustomBottomBar: View {
    var orderNumber: Int
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.green)
                .frame(width: 400, height: 80)
                
            HStack(alignment: .center) {
                Text(orderNumber == 1 ? "1 item added" : "\(orderNumber) items added")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.white)
                
                
            }
            .padding(.bottom, 10)
        }
        
        
    }
}
