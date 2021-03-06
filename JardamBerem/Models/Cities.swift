//
//  Cities.swift
//  JardamBerem
//
//  Created by Baha Ganyev on 28.07.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

class CityResult: Decodable {
    var results: [City] = []
}

class City: Decodable {
    var id: Int?
    var city_name: String?
}
