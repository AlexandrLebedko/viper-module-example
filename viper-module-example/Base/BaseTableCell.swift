//
//  BaseTableCell.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import UIKit

class BaseTableCell: UITableViewCell {
    
    var model: BaseTableCellModel? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
    }
}
