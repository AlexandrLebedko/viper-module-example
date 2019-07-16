//
//  ProductsService.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 16/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class ProductsService: IProductsService {
    
    private var productsStorage: IProductsStorage
    
    init(productsStorage: IProductsStorage) {
        self.productsStorage = productsStorage
    }
    
    func queryProducts(callback: @escaping GetProductsCallback) {
        callback(.success(productsStorage.getAllProducts()))
    }
}
