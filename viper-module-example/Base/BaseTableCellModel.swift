//
//  BaseTableCellModel.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import Foundation

struct TableCellInfo {
    
    let identifier: String
    let nibName: String
}

extension TableCellInfo: Equatable {
    
    static func == (lhs: TableCellInfo, rhs: TableCellInfo) -> Bool {
        return lhs.identifier == rhs.identifier && lhs.nibName == rhs.nibName
    }
}

typealias BaseTableCellModel = (BaseTableCellModelClass & IBaseTableCellModel)

protocol IBaseTableCellModel {
    var info: TableCellInfo { get }
}

class BaseTableCellModelClass {
}
