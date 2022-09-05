//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/4/22.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
