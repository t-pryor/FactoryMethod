//
//  main.swift
//  FactoryMethod
//
//  Created by Tim Pryor on 2015-11-11.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//

import Foundation

let passengers = [1, 3, 5, 13]

for p in passengers {
    println("\(p) passengers: \(CarSelector.selectCar(p)!)")
}

