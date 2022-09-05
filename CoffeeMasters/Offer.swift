//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/4/22.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 200
                )
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .font(.body)
                    .background(Color("CardBackground"))
            }
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(
            title: "Hello Pumpkin Spice Life",
            description: "Try our new pumpkin spice latte!"
        )
    }
}
