//
//  Car.swift
//  MVVMCar
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import Foundation

class Car {
    var model: String
    var make: String
    var kilowatts: Int
    var photoURL: String
    
    init(model: String, make: String, kilowatts: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }
}
