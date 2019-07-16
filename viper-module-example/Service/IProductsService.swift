//
//  IProductsService.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 16/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

typealias GetProductsCallback = (Swift.Result<[Product], Error>) -> Void

protocol IProductsService {
    
    func queryProducts(callback: @escaping GetProductsCallback)
}
