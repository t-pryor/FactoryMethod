//
//  PriceCalculator.swift
//  FactoryMethod
//
//  Created by Tim Pryor on 2015-11-12.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//


/*
    The PriceCalculator class defines a type method called calculatePrice
    that works out what it costs to rent a car for a given number of passengers
    and days.
    The code for selecting the RentalCar implementation class is the same 
    as in the CarSelector class and suffers from the same dependency on understanding
    the relationship between those classes.

*/


class PriceCalculator {
    class func calculatePrice(passengers: Int, days: Int) -> Float? {
        var car: RentalCar?
        switch (passengers) {
        case 0...1:
            car = Sports()
        case 2...3:
            car = Compact()
        case 4...8:
            car = SUV()
        case 9...14:
            car = Minivan()
        default:
            car = nil
        }
     
        return car == nil ? nil : car!.pricePerDay * Float(days)
    }
}
