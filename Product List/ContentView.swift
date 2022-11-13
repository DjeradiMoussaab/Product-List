//
//  ContentView.swift
//  Product List
//
//  Created by Moussaab Djeradi on 12/11/2022.
//

import SwiftUI
import Networking
 
struct ContentView: View {
    @State var products: [Product] = []
    var productService : ProductService
    var body: some View {
        NavigationView {
            VStack {
                Text("List des produits SEPHORA")
                List(products, id: \.id) { product in
                    Text(product.name)
                        .bold()
                    Text(product.description)
                }
            }.onAppear() {
                Task {
                    self.products = try await productService.perform(ProductEndpoint.getProductList)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(productService: ProductService())
    }
}

