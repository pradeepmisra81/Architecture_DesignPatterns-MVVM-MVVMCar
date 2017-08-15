//
//  CarViewModel.swift
//  MVVMCar
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import Foundation

class CarViewModel {
    //MARK: - properties
    
    fileprivate var car: Car
    
    /**
     
     Gets called to get modelText
     */
    var modelText: String {
        return car.model
    }
    
    /**
     
     Gets called to get makeText
     */
    var makeText: String {
        return car.make
    }
    
    /**
     
     Gets called to get horsepowerText
     */
    var horsepowerText: String {
        let horsepower = Int(round(Double(car.kilowatts) * CarConstants.horsepowerPerKilowatt))
        return "\(horsepower) HP"
    }
    
    /**
     
     Gets called to get titleText
     */
    var titleText: String {
        return "\(car.make) \(car.model)"
    }
    
    /**
     
     Gets called to get photoURL
     */
    var photoURL: URL? {
        return URL(string: car.photoURL)
    }
    
    //MARK: - member functions
    /**
     * initializer 
     * @parmam:
     * - Car model object
     */
    init(car: Car) {
        self.car = car
    }
}
