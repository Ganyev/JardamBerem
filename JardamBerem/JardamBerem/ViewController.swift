//
//  ViewController.swift
//  JardamBerem
//
//  Created by Baha Ganyev on 28.07.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCities(completion: printCities, error: printError)
    }
    
    func printCities(cities: [City]) {
        for i in cities {
            print(i.city_name ?? "empty")
        }
    }
    
    func printError(error: String) {
        print(error)
    }
    
    
    

}

