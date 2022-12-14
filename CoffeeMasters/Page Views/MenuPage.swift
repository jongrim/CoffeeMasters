//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/4/22.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name.capitalized)
                        .font(.title2)
                        .fontWeight(.bold)
                        
                    
                    
                    
                    
                    ScrollView(.horizontal) {
                        HStack() {
                            
                            ForEach(category.products) { product in
                                NavigationLink {
                                    DetailsPage(product: product)
                                } label: {
                                    ProductItem(
                                        product: product
                                    )
                                }
                                
                            }
                        }
                    }
                    
                    
                    
                    
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
    }
}
