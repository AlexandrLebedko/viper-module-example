//
//  DependencyContainer.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class DependencyContainer {
    
    lazy var productsStorage: IProductsStorage = {
        return MockProductsStorage()
    }()
    
    lazy var productsService: IProductsService = {
        return ProductsService(productsStorage: productsStorage)
    }()
}
