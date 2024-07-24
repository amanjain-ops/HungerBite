//
//  Restaurants.swift
//  HungerBite
//
//  Created by Aman Jain on 24/07/24.
//

import SwiftUI
import MapKit


//struct Restaurants: Codable, Equatable, Identifiable {
//    var id: UUID
//    var name: String
//    var tags: [String]
//    let latitude: Double
//    let longitude: Double
//    var image: String
//    var dishes: [Dish]
//    
//    static let example = Restaurants(id: UUID() ,name: "Buckingham Palace", tags: ["Pure Vegitarian", "North Indian"], latitude: 51.501, longitude: -0.141, image: "https://b.zmtcdn.com/data/pictures/9/100579/efb98fb013f6bc2b66a73aa37f73fdd3_o2_featured_v2.jpg?output-format=webp", dishes: [.example1, .example1])
//    
//    var coordinates: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//    }
//}


//struct Dish: Codable, Identifiable, Equatable {
//    var id: UUID
//    var name: String
//    var image: String
//    var description: String
//    var price: Double
//    var rating: Double
//    var ratingCount: Int
//    var isVeg: Bool
//    var isNonVeg: Bool
//    var numberOfOrders: Int
//    
//    static let example1 = Dish(id: UUID(), name: "Malai Kofta", image: "https://b.zmtcdn.com/data/dish_photos/9b5/682770db3e4cf25417435e66d1e5e9b5.jpg?fit=around|130:130&crop=130:130;*,*", description: "Indulge in a delightful combination of creamy cheese and sweet corn, nestled within soft dumpling pockets for a truly delectable experience.", price: 130, rating: 5, ratingCount: 200, isVeg: true, isNonVeg: false, numberOfOrders: 0)
//}




@Observable
class Restaurants: Codable, Identifiable {
    var id: UUID
    var name: String
    var tags: [String]
    let latitude: Double
    let longitude: Double
    var image: String
    var dishes: [Dish]
    
    init(id: UUID, name: String, tags: [String], latitude: Double, longitude: Double, image: String, dishes: [Dish]) {
        self.id = id
        self.name = name
        self.tags = tags
        self.latitude = latitude
        self.longitude = longitude
        self.image = image
        self.dishes = dishes
    }
    
    static let example = Restaurants(id: UUID() ,name: "Buckingham Palace 1", tags: ["Pure Vegitarian", "North Indian"], latitude: 51.501, longitude: -0.141, image: "https://b.zmtcdn.com/data/pictures/9/100579/efb98fb013f6bc2b66a73aa37f73fdd3_o2_featured_v2.jpg?output-format=webp", dishes: [.example1, .example1])
    static let example2 = Restaurants(id: UUID() ,name: "Buckingham Palace 2", tags: ["Pure Vegitarian", "North Indian"], latitude: 51.501, longitude: -0.141, image: "https://b.zmtcdn.com/data/pictures/9/100579/efb98fb013f6bc2b66a73aa37f73fdd3_o2_featured_v2.jpg?output-format=webp", dishes: [.example1, .example1])
    
    var coordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    
    
}


@Observable
class Dish: Codable, Identifiable, Equatable {
    var id: UUID
    var name: String
    var image: String
    var description: String
    var price: Double
    var rating: Double
    var ratingCount: Int
    var isVeg: Bool
    var isNonVeg: Bool
    var numberOfOrders: Int
    
    init(id: UUID, name: String, image: String, description: String, price: Double, rating: Double, ratingCount: Int, isVeg: Bool, isNonVeg: Bool, numberOfOrders: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.description = description
        self.price = price
        self.rating = rating
        self.ratingCount = ratingCount
        self.isVeg = isVeg
        self.isNonVeg = isNonVeg
        self.numberOfOrders = numberOfOrders
    }
    
    static let example1 = Dish(id: UUID(), name: "Malai Kofta34", image: "https://b.zmtcdn.com/data/dish_photos/9b5/682770db3e4cf25417435e66d1e5e9b5.jpg?fit=around|130:130&crop=130:130;*,*", description: "Indulge in a delightful combination of creamy cheese and sweet corn, nestled within soft dumpling pockets for a truly delectable experience.", price: 130, rating: 5, ratingCount: 200, isVeg: true, isNonVeg: false, numberOfOrders: 0)
    static let example3 = Dish(id: UUID(), name: "Malai Kofta65", image: "https://b.zmtcdn.com/data/dish_photos/9b5/682770db3e4cf25417435e66d1e5e9b5.jpg?fit=around|130:130&crop=130:130;*,*", description: "Indulge in a delightful combination of creamy cheese and sweet corn, nestled within soft dumpling pockets for a truly delectable experience.", price: 130, rating: 5, ratingCount: 200, isVeg: true, isNonVeg: false, numberOfOrders: 0)
    
    static let example4 = Dish(id: UUID(), name: "Malai Kofta675", image: "https://b.zmtcdn.com/data/dish_photos/9b5/682770db3e4cf25417435e66d1e5e9b5.jpg?fit=around|130:130&crop=130:130;*,*", description: "Indulge in a delightful combination of creamy cheese and sweet corn, nestled within soft dumpling pockets for a truly delectable experience.", price: 130, rating: 5, ratingCount: 200, isVeg: true, isNonVeg: false, numberOfOrders: 0)
    
    // Implement Equatable protocol
        static func == (lhs: Dish, rhs: Dish) -> Bool {
            return lhs.id == rhs.id
            // Compare other properties as needed
        }
}
