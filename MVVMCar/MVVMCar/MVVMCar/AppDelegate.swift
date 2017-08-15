
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

    // MARK: - varidable
    var window: UIWindow?
    
    // array of CarViewModels
    let cars: [CarViewModel] = {
        
        let ferrariF12 = Car(model: CarConstants.Ferrari.MODEL_F12, make: CarConstants.Ferrari.MAKE, kilowatts: CarConstants.Ferrari.POWER, photoURL: CarConstants.Ferrari.URL)
        
        let zondaF = Car(model: CarConstants.Pagani.MODEL_ZONDA_F, make: CarConstants.Pagani.MAKE, kilowatts: CarConstants.Pagani.POWER, photoURL: CarConstants.Pagani.URL)
        
        let lamboAventador = Car(model: CarConstants.Lamborghini.MODEL_AVENTADOR, make: CarConstants.Lamborghini.MAKE, kilowatts: CarConstants.Lamborghini.POWER, photoURL: CarConstants.Lamborghini.URL)
        
        return [CarViewModel(car: ferrariF12), CarViewModel(car: zondaF), CarViewModel(car: lamboAventador)]
    }()


    // MARK: - methods
    /**
     * Override point for customization after application launch.
     */
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    /**
     * This delegate function is called when the application is about to move from active to inactive 
     * state. This can occur for certain types of temporary interruptions (such as an incoming phone call
     * or SMS message) or when the user quits the application and it begins the transition to the 
     * background state.
     * Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering
     * callbacks.
     */
    func applicationWillResignActive(_ application: UIApplication) {
    }

    /**
     * Use this method to release shared resources, save user data, invalidate timers, and store enough
     * application state information to restore your application to its current state in case it is 
     * terminated later.
     * If your application supports background execution, this method is called instead of
     * applicationWillTerminate: when the user quits.
     */
    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    /**
     * Called as part of the transition from the background to the active state; here you can undo many 
     * of the changes made on entering the background.
     */
    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    /**
     * Restart any tasks that were paused (or not yet started) while the application was inactive. 
     * If the application was previously in the background, optionally refresh the user interface.
     */
    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    /**
     * Called when the application is about to terminate. Save data if appropriate. See also
     * applicationDidEnterBackground:.
     * Saves changes in the application's managed object context before the application terminates.
     */
    func applicationWillTerminate(_ application: UIApplication) {
    }

}

