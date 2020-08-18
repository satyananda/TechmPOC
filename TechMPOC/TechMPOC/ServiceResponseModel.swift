//
//  ServiceResponseModel.swift
//  TechMPOC
//
//  Created by Satyananda Kumar on 29/06/20.
//  Copyright © 2020 Satyananda Kumar. All rights reserved.
//

import Foundation

struct ServiceResponseModel : Codable {
    let title : String?
    let rows : [Products]?

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case rows = "rows"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        rows = try values.decodeIfPresent([Products].self, forKey: .rows)
    }

}

