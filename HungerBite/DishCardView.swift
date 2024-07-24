//
//  DishCardView.swift
//  HungerBite
//
//  Created by Aman Jain on 25/07/24.
//

import SwiftUI

struct DishCardView: View {
    
    var dish: Dish
    @State private var numberOfOrders = 0
//    @State var showingBottomBar: Bool = false
    @Binding var NumberOfDishes: [Dish]
    
    var body: some View {
        
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(.white)
                .shadow(color: .gray.opacity(0.4), radius: 1, y: 1)
                HStack(alignment: .top) {
                    VStack(alignment: .leading){
                        // Veg sign
                        Circle()
                            .fill(.green)
                            .frame(width: 12, height: 12)
                            .padding(4)
                            .border(.gray)
                            .clipShape(.rect(cornerRadius: 2))
                            .bold()
                        
                        Text(dish.name)
                            .font(.title2)
                            .padding(.bottom, 10)
                        
                        // Rating
                        
                        // Price
                        
                        Text("Rs. \(dish.price.formatted())")
                            .fontWeight(.semibold)
                            .padding(.bottom, 10)
                        
                        // description
                        Text(dish.description)
                            .foregroundStyle(.secondary)
                            .lineLimit(3)
                            .padding(.trailing, 15)
                            .font(.subheadline)
                        
                    } // Vstack
                    Spacer()
                    // Image
                    ZStack(alignment: .bottom) {
                        AsyncImage(url: URL(string: dish.image)) { image in
                            image
                                .image?.resizable()
                                .scaledToFit()
                            //                            .frame(width: 200, height: 190)
                                .clipShape(.rect(cornerRadius: 10))
                        }
                        
                        .padding(.bottom, 20)
                        
                        if dish.numberOfOrders > 0 {
                            CustomStepper(value: $numberOfOrders, NumberOfDishes: $NumberOfDishes, dish: dish)
                        } else {
                            
                            // Add Button
                            VStack(alignment: .center) {
                                HStack(alignment: .top) {
                                    
                                    Text("ADD")
                                        .font(.title)
                                        .foregroundStyle(.green)
                                        .bold()
                                    
                                    
                                    Image(systemName: "plus")
                                        .font(.caption)
                                        .foregroundStyle(.green)
                                        .bold()
                                    
                                    
                                }
                                .frame(width: 150, height: 45)
                                .background(.green.mix(with: .white, by: 0.7))
                                .clipShape(.rect(cornerRadius: 10))
                                .onTapGesture {
//                                    print("helo")
//                                    dish.numberOfOrders = 1
                                    numberOfOrders = 1
                                    NumberOfDishes.append(dish)
                                    
                                }
                            } // Add Button Vstack
                            
                        }
                    }
                } // Outer Hstack
                .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: 260)
        .onChange(of: numberOfOrders ) {
            if numberOfOrders >= 0 {
                
                dish.numberOfOrders = numberOfOrders
            }
            print(NumberOfDishes)
        }
        
    }
}

#Preview {
    DishCardView(dish: Dish.example1, NumberOfDishes: .constant([.example1]))
}


struct CustomStepper: View {
    @Binding var value: Int
    @Binding var NumberOfDishes: [Dish]
    var dish: Dish
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Button {
                if value > 0 {
                    value -= 1
//                    NumberOfDishes.remove(at: NumberOfDishes.lastIndex(where: <#T##(Dish) throws -> Bool#>))
                    
                    if let index = NumberOfDishes.firstIndex(of: dish) {
                        NumberOfDishes.remove(at: index)
                    }
                    
                }
            } label: {
                Image(systemName: "minus")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .padding(5)
            
            Spacer()
            
            Text(String(value))
                .font(.title)
                .padding(5)
            
            Spacer()
            Button {
                value += 1
                NumberOfDishes.append(dish)
            } label: {
                Image(systemName: "plus")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .padding(5)
            
            Spacer()
        }
        
        .frame(width: 150, height: 45)
        .background(.green)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}
