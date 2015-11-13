//
//  CarSelector.swift
//  FactoryMethod
//
//  Created by Tim Pryor on 2015-11-11.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//

import Foundation

// PROBLEM (WHICH WILL BE SOLVED BY FACTORY):
// CarSelector class has to know about every implementation of the RentalCar protocol that it wants to use
// and it has to know when each should be created

// different from tight coupling because CarSelector class doesn't depend on the implementation
// of the classes it uses, but it is still a problem because it depends on knowledge about the classes
// that implement the protocol

// New implementation classes require updates to the CarSelector class, as do changes
// in the circumstances for which a specific implementation class is appropriate
// e.g. if we change the car model used for the Sports class so it has four seats,
// then we must update the CarSelector class so it knows it can be used for one to three passengers

// SECOND ISSUE
// the knowledge about how to select an implementation class will become diffused
// throughout the application as I add components that need to select implementations of the RentalCar protocol.

class CarSelector {
    class func selectCar (passengers: Int) -> String? {
        
        return RentalCar.createRentalCar(passengers)?.name
    
    }
}