//
//  CarViewModel.swift
//  MVVMCar
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import Foundation

class CarViewModel {
    fileprivate var car: Car
    
    var modelText: String {
        return car.model
    }
    
    var makeText: String {
        return car.make
    }
    
    var horsepowerText: String {
        let horsepower = Int(round(Double(car.kilowatts) * CarConstants.horsepowerPerKilowatt))
        return "\(horsepower) HP"
    }
    
    var titleText: String {
        return "\(car.make) \(car.model)"
    }
    
    var photoURL: URL? {
        return URL(string: car.photoURL)
    }
    
    init(car: Car) {
        self.car = car
    }
}
