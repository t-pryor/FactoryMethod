//
//  PriceCalculator.swift
//  FactoryMethod
//
//  Created by Tim Pryor on 2015-11-12.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//





class PriceCalculator {
    class func calculatePrice(passengers: Int, days: Int) -> Float? {
    
        var car = RentalCar.createRentalCar(passengers)
        return car == nil ? nil : car!.pricePerDay * Float(days)
    }
}
