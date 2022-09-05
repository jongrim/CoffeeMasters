//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/5/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(product: Product, quantity: Int)] = []
    
    func total() -> Double {
        return 0.0
    }
}
