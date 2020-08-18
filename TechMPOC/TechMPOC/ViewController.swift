//
//  ViewController.swift
//  TechMPOC
//
//  Created by Satyananda Kumar on 29/06/20.
//  Copyright © 2020 Satyananda Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let productTableView = UITableView()
    private let contacts : [String] = []
    var productViewModel: ProductViewModel = ProductViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.prepareTableview()
        self.refreshData()
    }

    func prepareTableview() {
        self.view.addSubview(productTableView)
        
        productTableView.translatesAutoresizingMaskIntoConstraints = false
    productTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
    productTableView.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor).isActive = true
    productTableView.rightAnchor.constraint(equalTo:view.safeAreaLayoutGuide.rightAnchor).isActive = true
    productTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            
        productTableView.dataSource = self
        productTableView.delegate = self
            
        //productTableView.estimatedRowHeight = 100
        //productTableView.rowHeight = UITableView.automaticDimension
            
        productTableView.register(ProductTableViewCell.self, forCellReuseIdentifier: "contactCell")


        navigationItem.title = ""
    }

    func refreshData() {
        productViewModel.getServicecall()
        productViewModel.reloadList = { [weak self] ()  in
            DispatchQueue.main.async {
                self?.productTableView.reloadData()
            }
        }
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return productViewModel.productArray.count
        return productViewModel.productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        //return UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ProductTableViewCell

        //      cell.textLabel?.text = contacts[indexPath.row].name
        //cell.contact = contacts[indexPath.row]
        cell.productImage.image = UIImage(named: "placeholder")
        cell.productNameLabel.text = productViewModel.productArray[indexPath.row].title
        cell.productDescriptionLabel.text = productViewModel.productArray[indexPath.row].description
        print(productViewModel.productArray[indexPath.row].title as Any)
        return cell
        
       
    }
    
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
                return UITableView.automaticDimension

    }

}
