//
//  CarView.swift
//  MVVMCar
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import UIKit

class CarView: UITableViewController {
    //MARK: - properties
    
    let cars: [CarViewModel] = (UIApplication.shared.delegate as! AppDelegate).cars
    let CARCELL = "CarCell"
    let DEBUG_MESSAGE_IMAGE_URL_NOTAVAILABLE = "imageURL is not available"
    let TABLEVIEW_CONTENTSET = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    
    //MARK: - View Controller life cycle
    /**
     * This function is automatically called  when the view controller loaded completely in the memory.
     * Override this method to perform additional initialization on views that were loaded from nib files
     * and other tasks.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = TABLEVIEW_CONTENTSET
    }
    
    /**
     * This function is called automatically when the system determines that the amount of available
     * memory is low. Override this method to release any additional memory that is not essential.
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    /**
     * Table view delegate method for number Of Sections
     */
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    /**
     * Table view delegate method for number Of Rows In Section
     */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    /**
     * Table view delegate method to return cell For Row at particular index path
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CARCELL, for: indexPath)
        let carViewModel = cars[indexPath.row]
        
        cell.textLabel?.text = carViewModel.titleText
        cell.detailTextLabel?.text = carViewModel.horsepowerText
        loadImage(cell, photoURL: carViewModel.photoURL )
        
        return cell
    }
    
    /**
     * Gets called to load Image
     */
    func loadImage(_ cell: UITableViewCell, photoURL: URL?) {
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            guard let imageURL = photoURL else {
                print(self.DEBUG_MESSAGE_IMAGE_URL_NOTAVAILABLE)
                return
            }
            
            guard let imageData = try? Data(contentsOf: imageURL) else {
                print(self.DEBUG_MESSAGE_IMAGE_URL_NOTAVAILABLE)
                return
            }
            
            DispatchQueue.main.async {
                cell.imageView?.image = UIImage(data: imageData)
                cell.setNeedsLayout()
            }
        }
    }
    
}

