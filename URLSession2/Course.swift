//
//  Course.swift
//  URLSession2
//
//  Created by Aleh Kuchynski on 01/08/2022.
//

import Foundation

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    let number_of_lessons: Int?
    let number_of_tests: Int?
}
