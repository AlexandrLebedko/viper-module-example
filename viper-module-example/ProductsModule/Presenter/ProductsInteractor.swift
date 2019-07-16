//
//  ProductsInteractor.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 16/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class ProductsInteractor: ProductsInteractorInput {
    
    private var productsService: IProductsService
    weak var output: ProductsInteractorOutput?

    init(productsService: IProductsService) {
        self.productsService = productsService
    }
    
    func getProducts() {
        productsService.queryProducts { [weak self] (result) in
            switch result {
            case let .success(products):
                self?.output?.productsDidReceive(products)
            case .failure:
                print("")
            }
        }
    }
}
