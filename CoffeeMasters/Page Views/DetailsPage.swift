//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/5/22.
//

import SwiftUI

struct DetailsPage: View {
    var product: Product
    @State var quantity = 1
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ \(product.price, specifier: "%.2f") each")
                Stepper(value: $quantity, in: 1...10) { }
            }
            .frame(maxWidth: .infinity)
            .padding(30)
            
            Text("Subtotal $\(Double(quantity) * 4.25, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                //TODO
            }
            .padding()
            .frame(width: 250.0)
            .background(Color("Alternative2"))
            .foregroundColor(Color.black)
            .cornerRadius(25)
        }
        .navigationTitle(product.name)
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(product: Product(id: 1, name: "PSL", description: "PSL 4 LIFE", price: 4.25, image: "cappuccino.png"))
    }
}
