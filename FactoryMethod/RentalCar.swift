//
//  RentalCar.swift
//  FactoryMethod
//
//  Created by Tim Pryor on 2015-11-11.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//

protocol RentalCar {
    var name: String { get }
    var passengers: Int { get }
    var pricePerDay: Float { get }
    
}

class Compact: RentalCar {
    var name = "VW Golf"
    var passengers = 3
    var pricePerDay: Float = 20
}

class Sports: RentalCar {
    var name = "Porsche Boxter"
    var passengers = 1
    var pricePerDay: Float = 100
}

class SUV: RentalCar {
    var name = "Cadillac Escalade"
    var passengers = 8
    var pricePerDay: Float = 75
}

class Minivan: RentalCar {
    var name = "Chevrolet Express"
    var passengers = 14
    var pricePerDay: Float = 40
}
