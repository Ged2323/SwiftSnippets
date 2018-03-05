//
//  ViewController.swift
//  Motion CoreMotion
//
//  Created by Gerard Grundy on 5/3/18.
//  Copyright © 2018 Gerard Grundy. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        motionManager = CMMotionManager()
        motionManager.accelerometerUpdateInterval = 1
        
        motionManager.startAccelerometerUpdates(to: .main)
        {
            [weak self] (data: CMAccelerometerData?, error: Error?) in
            if (data?.acceleration) != nil {
                
                if (fabs((data?.acceleration.x)!) > 0.2) {
                    
                   print("X axis moving—> \(fabs((data?.acceleration.x)!))\n")
                   
                    
                    
                }
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

