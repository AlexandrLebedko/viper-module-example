//
//  ProductsPresenter.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 16/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class ProductsPresenter: ProductsModuleInput, ProductsInteractorOutput, ProductsViewOutput {
    
    var productsCount: Int {
        return products.count
    }
    
    func product(at index: Int) -> ProductTableCellModel {
        return products[index]
    }
    
    var productCells: [TableCellInfo] {
        return products.map { $0.info }.withoutDuplicates
    }
    
    private var products: [ProductTableCellModel] = []
    weak var view: ProductsViewInput?
    var interactor: ProductsInteractorInput?
    var router: ProductsRouterInput!

    func viewDidLoad() {
        interactor?.getProducts()
    }
    
    func productsDidReceive(_ products: [Product]) {
        self.products = products.compactMap { ProductTableCellModel(product: $0) }
        view?.updateProducts()
    }
    
}
