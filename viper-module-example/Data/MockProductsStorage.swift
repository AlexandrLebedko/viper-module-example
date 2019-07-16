//
//  MockProductsStorage.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class MockProductsStorage: IProductsStorage {
    
    func getAllProducts() -> [Product] {
        var products: [Product] = []
        let productsCount: Int = 10
        
        for i in 1...productsCount {
            let product = Product(name: "Product #\(i)", count: i)
            products.append(product)
        }
        
        return products
    }
}
