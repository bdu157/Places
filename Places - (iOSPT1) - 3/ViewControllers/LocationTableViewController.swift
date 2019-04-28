//
//  LocationTableViewController.swift
//  Places - (iOSPT1) - 3
//
//  Created by Dongwoo Pae on 4/28/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class LocationTableViewController: UITableViewController {
    @IBOutlet weak var LocationNameTextField: UITextField!
    @IBOutlet weak var LatitudeTextField: UITextField!
    @IBOutlet weak var LongitudeTextField: UITextField!
    
    let placeController = PlaceController()
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeController.places.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)
        let place = placeController.places[indexPath.row]
        cell.textLabel?.text = place.name
        return cell
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }d
    */

    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        guard let name = LocationNameTextField.text,
            let latitudeString = LatitudeTextField.text,
            let longitudeString = LongitudeTextField.text,
            let latitude = Double(latitudeString),
            let longitude = Double(longitudeString) else {return}
            placeController.createPlace(name: name, latitude: latitude, longitude: longitude)
            self.tableView.reloadData()
    }
}
