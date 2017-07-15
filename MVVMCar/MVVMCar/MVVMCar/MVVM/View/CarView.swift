//
//  CarView.swift
//  MVVMCar
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import UIKit

class CarView: UITableViewController {
    
    let cars: [CarViewModel] = (UIApplication.shared.delegate as! AppDelegate).cars
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)
        let carViewModel = cars[indexPath.row]
        
        cell.textLabel?.text = carViewModel.titleText
        cell.detailTextLabel?.text = carViewModel.horsepowerText
        loadImage(cell, photoURL: carViewModel.photoURL )
        
        return cell
    }
    
    func loadImage(_ cell: UITableViewCell, photoURL: URL?) {
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            guard let imageURL = photoURL else {
                print("imageURL is not available")
                return
            }
            
            guard let imageData = try? Data(contentsOf: imageURL) else {
                print("imageData is not available")
                return
            }
            
            DispatchQueue.main.async {
                cell.imageView?.image = UIImage(data: imageData)
                cell.setNeedsLayout()
            }
        }
    }
    
}

