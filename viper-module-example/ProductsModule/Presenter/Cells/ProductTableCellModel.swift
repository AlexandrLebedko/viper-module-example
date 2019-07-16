//
//  ProductTableCellModel.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

class ProductTableCellModel: BaseTableCellModel {
    
    var info: TableCellInfo { return TableCellInfo(identifier: "product_table_cell",
                                                   nibName: "ProductTableCell")}
    private var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    var productNameLabelText: String? {
        return product.name
    }
    
    var productCountLabelText: String? {
        return "In stock".localizedCapitalized
            .appending(": ")
            .appending("\(product.count)")
    }
}
