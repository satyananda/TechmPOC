//
//  Products.swift
//  TechMPOC
//
//  Created by Satyananda Kumar on 29/06/20.
//  Copyright © 2020 Satyananda Kumar. All rights reserved.
//

import Foundation

class Products: Codable {
    
    let title : String?
    let description : String?
    let imageHref : String?

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "description"
        case imageHref = "imageHref"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        imageHref = try values.decodeIfPresent(String.self, forKey: .imageHref)
    }

}
