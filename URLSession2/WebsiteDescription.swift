//
//  WebsiteDescription.swift
//  URLSession2
//
//  Created by Aleh Kuchynski on 02/08/2022.
//

import Foundation

struct WebsiteDescription: Decodable {
    
    let websiteDescription: String?
    let websiteName: String?
    let courses: [Course]
}
