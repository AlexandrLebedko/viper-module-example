//
//  ProductsModuleConfigurator.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class ProductsModuleConfigurator {
    private var dependencyContainer: DependencyContainer
    
    init(dependencyContainer: DependencyContainer) {
        self.dependencyContainer = dependencyContainer
    }
    
    func configure(viewController: ProductsViewController) {
        
        let router = ProductsRouter()
        
        let presenter = ProductsPresenter()
        presenter.view = viewController
        presenter.router = router
        
        let interactor = ProductsInteractor(productsService: dependencyContainer.productsService)
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewController.output = presenter
    }
}
