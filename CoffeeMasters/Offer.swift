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
        VStack {
            Text(title)
                .padding()
                .font(.title)
            Text(description)
                .padding()
                .font(.body)
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
