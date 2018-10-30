//
//  SingleChooseDistViewController.swift
//  TamilNaduFreeHospitals
//
//  Created by Akshay Ravi on 2018-05-27.
//  Copyright © 2018 Akshay Ravi. All rights reserved.
//

import UIKit

class SingleChooseDistViewController: UIViewController {
    
    
    
    @IBAction func AboutButton(_ sender: Any) {
        
        
         UIApplication.shared.open(URL(string: "http://smartworks-env.wtvkvyk4ti.us-east-2.elasticbeanstalk.com/apps.jsp")! as URL, options: [:], completionHandler: nil)
        
        
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
