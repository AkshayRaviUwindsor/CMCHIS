//
//  RajanEyeCareDetailedSViewController.swift
//  TamilNaduFreeHospitals
//
//  Created by Akshay Ravi on 2018-06-18.
//  Copyright © 2018 Akshay Ravi. All rights reserved.
//

import UIKit
import MapKit

class RajanEyeCareDetailedSViewController: UIViewController {

    
    @IBAction func Emergency(_ sender: Any) {
        
        let url: NSURL = URL(string: "tel://108")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
    
    }
    
    
    @IBAction func Appointment(_ sender: Any) {
        
        
        let url: NSURL = URL(string: "tel://04428340300")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
        
        
    }
    
    
    @IBAction func Website(_ sender: Any) {
        
        
         UIApplication.shared.open(URL(string: "http://www.rajaneyecare.com/contact-us/")! as URL, options: [:], completionHandler: nil)
        
        
    }
    
    
    @IBAction func Location(_ sender: Any) {
        
        
        let latitude: CLLocationDegrees = 13.050859
        let longitude: CLLocationDegrees = 80.243299
        let regionDistance:CLLocationDistance = 100;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionspan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionspan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionspan.span)]
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Rajan Eye Care"
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
