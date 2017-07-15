
//
//  AppDelegate.swift
//  MVVMCar
//
//  Created by pradeep kumar misra on 16/06/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let cars: [CarViewModel] = {
        
        let ferrariF12 = Car(model: CarConstants.Ferrari.MODEL_F12, make: CarConstants.Ferrari.MAKE, kilowatts: CarConstants.Ferrari.POWER, photoURL: CarConstants.Ferrari.URL)
        
        let zondaF = Car(model: CarConstants.Pagani.MODEL_ZONDA_F, make: CarConstants.Pagani.MAKE, kilowatts: CarConstants.Pagani.POWER, photoURL: CarConstants.Pagani.URL)
        
        let lamboAventador = Car(model: CarConstants.Lamborghini.MODEL_AVENTADOR, make: CarConstants.Lamborghini.MAKE, kilowatts: CarConstants.Lamborghini.POWER, photoURL: CarConstants.Lamborghini.URL)
        
        return [CarViewModel(car: ferrariF12), CarViewModel(car: zondaF), CarViewModel(car: lamboAventador)]
    }()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}

