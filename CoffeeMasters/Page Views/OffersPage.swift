//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Jonathan Grim on 9/4/22.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "PSL", description: "Get yours now!")
                Offer(title: "New Nitro Coffee", description: "Black as the night and strong as your mom")
                Offer(title: "BOGO Hour", description: "Grab a friend, or just an extra drink")
                Offer(title: "Sweet Treats", description: "Half off till Halloween")
            }.navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
