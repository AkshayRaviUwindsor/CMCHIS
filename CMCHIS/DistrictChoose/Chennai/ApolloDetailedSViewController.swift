//
//  ApolloDetailedSViewController.swift
//  TamilNaduFreeHospitals
//
//  Created by Akshay Ravi on 2018-06-01.
//  Copyright © 2018 Akshay Ravi. All rights reserved.
//

import UIKit
import MapKit

class ApolloDetailedSViewController: UIViewController {

    
    
    @IBAction func EmergencyButton(_ sender: Any) {
        
        
        let url: NSURL = URL(string: "tel://1066")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
    }
    
    
    
    
    @IBAction func AppointmentButton(_ sender: Any) {
        
        let url: NSURL = URL(string: "tel://04428296015")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
        
        
        
    }
    
    
    
    
    @IBAction func Website(_ sender: Any) {
        
            UIApplication.shared.open(URL(string: "https://chennai.apollohospitals.com/hospitals/thousand-lights-childrens")! as URL, options: [:], completionHandler: nil)
        
        
    }
    
    
    @IBAction func Location(_ sender: Any) {
        
        
        let latitude: CLLocationDegrees = 13.060540
        let longitude: CLLocationDegrees = 80.252311
        let regionDistance:CLLocationDistance = 100;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionspan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionspan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionspan.span)]
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Apollo Children's Hospital"
        mapItem.openInMaps(launchOptions: options)
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
