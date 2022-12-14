//
//  Category.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/5/22.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String {
        return self.name
    }
}
