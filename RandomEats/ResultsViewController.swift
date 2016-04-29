//
//  ResultsViewController.swift
//  RandomEats
//
//  Created by Maliha Fairooz on 4/25/16.
//  Copyright © 2016 RandomEats. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ResultsViewController: UIViewController , CLLocationManagerDelegate{

    var category: String = ""
    
    var locationManager: CLLocationManager!
    
    @IBOutlet weak var foodMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding location manager
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.distanceFilter = 300
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters

        // Do any additional setup after loading the view.
    }
    
    //Asking for permission
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
