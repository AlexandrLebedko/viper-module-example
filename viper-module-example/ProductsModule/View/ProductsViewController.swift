//
//  ProductsViewController.swift
//  viper-module-example
//
//  Created by Александр Лебедько on 17/07/2019.
//  Copyright © 2019 Alexandr Lebedko. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, ProductsViewInput {

    @IBOutlet weak var productsTableView: UITableView!
    var output: ProductsViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsTableView.delegate = self
        productsTableView.dataSource = self
        output.viewDidLoad()
    }

    func updateProducts() {
        output.productCells.forEach {
            productsTableView.register(UINib(nibName: $0.nibName, bundle: nil),
                                       forCellReuseIdentifier: $0.identifier)
        }
        productsTableView.reloadData()
    }
}

extension ProductsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.productsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = output.product(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: model.info.identifier, for: indexPath) as! ProductTableCell
        cell.model = model
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
