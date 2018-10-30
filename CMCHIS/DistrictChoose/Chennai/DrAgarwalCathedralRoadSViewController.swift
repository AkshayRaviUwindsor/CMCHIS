//
//  DrAgarwalCathedralRoadSViewController.swift
//  TamilNaduFreeHospitals
//
//  Created by Akshay Ravi on 2018-06-02.
//  Copyright © 2018 Akshay Ravi. All rights reserved.
//

import UIKit
import MapKit

class DrAgarwalCathedralRoadSViewController: UIViewController {

    
    
    @IBAction func EmergencyPhone(_ sender: Any) {
        
        let url: NSURL = URL(string: "tel://108")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
        
        
    }
    
    
    @IBAction func AppointmentPhone(_ sender: Any) {
        
        
        let url: NSURL = URL(string: "tel://04428112811")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
        
        
    }
    
    
    
    @IBAction func Website(_ sender: Any) {
        
        
        UIApplication.shared.open(URL(string: "http://www.dragarwal.com/location/chennai-main-hospital/")! as URL, options: [:], completionHandler: nil)
        
        
        
        
    }
    
    
    @IBAction func Location(_ sender: Any) {
        
        
        let latitude: CLLocationDegrees = 13.048168
        let longitude: CLLocationDegrees = 80.253310
        let regionDistance:CLLocationDistance = 100;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionspan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionspan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionspan.span)]
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Dr.Agarwal's Eye Hospital"
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
