//
//  Product_ListApp.swift
//  Product List
//
//  Created by Moussaab Djeradi on 12/11/2022.
//

import SwiftUI
import Networking
@main
struct Product_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(productService: ProductService())
        }
    }
}
