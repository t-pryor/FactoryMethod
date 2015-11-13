//
//  RentalCar.swift
//  FactoryMethod
//
//  Created by Tim Pryor on 2015-11-11.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//



// Use class to capture the implementation contract that the protocol imposed on its implementations
// so define final computed properties that expose the name, number of passengers and the price
// and have defined backing properties that are set by a private constructor

// Subclasses have to invoke the RentalCar initializer, which requires values for backing values
// that are used by the computed properites, creating an effect that is similar to using a protocol


class RentalCar {
    
    private var nameBV: String
    private var passengersBV: Int
    private var priceBV: Float
    
    private init(name: String, passengers: Int, price: Float) {
        self.nameBV = name
        self.passengersBV = passengers
        self.priceBV = price
    }
    
    final var name: String {
        get { return nameBV }
    }
    
    final var passengers: Int {
        get { return passengersBV }
    }
    
    final var pricePerDay: Float {
        get { return priceBV }
    }

    class func createRentalCar(passengers: Int) -> RentalCar? {
        
        var car:RentalCar?
        
        switch (passengers) {
        case 0...3:
            car = Compact()
        case 4...8:
            car = SUV()
        default:
            car = nil
        }
        
        return car
    }
}

class Compact: RentalCar {
    private init() {
        super.init(name: "VWGolf", passengers: 3, price: 20)
    }
}

class SUV: RentalCar {
    private init() {
        super.init(name: "Cadillac Escalade", passengers: 8, price: 75)
    }
}



