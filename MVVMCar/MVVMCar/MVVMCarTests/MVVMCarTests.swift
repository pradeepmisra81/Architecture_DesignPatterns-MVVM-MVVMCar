//
//  MVVMCarTests.swift
//  MVVM-Car
//
//  Created by pradeep kumar misra on 16/06/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import XCTest
@testable import MVVMCar

class MVVMCarTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCarViewModelWithFerrariF12() {
        let ferrariF12 = Car(model: "F12", make: "Ferrari", kilowatts: 544, photoURL: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        
        let ferrariViewModel = CarViewModel(car: ferrariF12)
        XCTAssertEqual(ferrariViewModel.modelText, "F12")
        XCTAssertEqual(ferrariViewModel.makeText, "Ferrari")
        XCTAssertEqual(ferrariViewModel.horsepowerText, "730 HP")
        XCTAssertEqual(ferrariViewModel.photoURL, URL(string: ferrariF12.photoURL))
        XCTAssertEqual(ferrariViewModel.titleText, "Ferrari F12")
    }
    
    func testCarViewModelWithPaganiZondaF() {
        let panagiZondaF = Car(model: "Zonda F", make: "Pagani", kilowatts: 449, photoURL: "http://storage.pagani.com/view/1024/BIG_zg-4-def.jpg")
        
        let paganiViewModel = CarViewModel(car: panagiZondaF)
        XCTAssertEqual(paganiViewModel.modelText, "Zonda F")
        XCTAssertEqual(paganiViewModel.makeText, "Pagani")
        XCTAssertEqual(paganiViewModel.horsepowerText, "602 HP")
        XCTAssertEqual(paganiViewModel.photoURL, URL(string: panagiZondaF.photoURL))
        XCTAssertEqual(paganiViewModel.titleText, "Pagani Zonda F")
    }
    
    func testCarViewModelWithLamborghiniAventador() {
        let lamborghiniAventador = Car(model: "Aventador", make: "Lamborghini", kilowatts: 522, photoURL: "http://cdn.lamborghini.com/content/models/aventador_lp700-4_roadster/gallery_2013/roadster_21.jpg")
        
        let lamborghiniViewModel = CarViewModel(car: lamborghiniAventador)
        XCTAssertEqual(lamborghiniViewModel.modelText, "Aventador")
        XCTAssertEqual(lamborghiniViewModel.makeText, "Lamborghini")
        XCTAssertEqual(lamborghiniViewModel.horsepowerText, "700 HP")
        XCTAssertEqual(lamborghiniViewModel.photoURL, URL(string: lamborghiniAventador.photoURL))
        XCTAssertEqual(lamborghiniViewModel.titleText, "Lamborghini Aventador")
    }
    
}
