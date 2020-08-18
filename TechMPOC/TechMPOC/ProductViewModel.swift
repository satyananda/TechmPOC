//
//  ProductViewModel.swift
//  TechMPOC
//
//  Created by Satyananda Kumar on 29/06/20.
//  Copyright © 2020 Satyananda Kumar. All rights reserved.
//

import UIKit
import Foundation

class ProductViewModel {
        
    var title : String = ""
    var productArray : [Products] = [] {
        didSet {
            reloadList()
        }
    }
    var reloadList = {() -> () in }

    func getServicecall() {
        
        if let url = URL(string: "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json") {
           URLSession.shared.dataTask(with: url) { data, response, error in
              if let data = data {
                  do {
                    
                    guard let string = String(data: data, encoding: String.Encoding.isoLatin1) else {
                        return
                    }
                    guard let encData = string.data(using: .utf8, allowLossyConversion: false) else {
                        return
                    }
                     let res = try JSONDecoder().decode(ServiceResponseModel.self, from: encData)
                    print("\n Reponse Data: \n Count:\(res.rows?.count ?? 0) \n",res)
                    self.productArray = (res.rows ?? nil)!
                    self.title = res.title ?? ""
                  } catch let error {
                     print("\n Error in Handling: \n ",error)
                  }
               }
           }.resume()
        }
    }
}

