//
//  ProductTableCell.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import UIKit

class ProductTableCell: BaseTableCell {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productCountLabel: UILabel!
    
    override func updateViews() {
        guard let model = model as? ProductTableCellModel else {
            return
        }
        
        productNameLabel.text = model.productNameLabelText
        productCountLabel.text = model.productCountLabelText
    }
}
