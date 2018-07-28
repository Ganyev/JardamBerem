//
//  Constants.swift
//  JardamBerem
//
//  Created by Baha Ganyev on 28.07.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

struct Constants {
    struct Network{
        struct EndPoint {
            static let cities = "cities/"
        }
        
        struct ErrorMessage {
            static let NO_INTERNET_CONNECTION = "No internet connection"
            static let UNABLE_LOAD_DATA = "Unable load data"
            static let NO_HTTP_STATUS_CODE = "Unable to get response HTTP status code"
            static let UNAUTHORIZED = "Unauthorized error"
        }
    }
}
