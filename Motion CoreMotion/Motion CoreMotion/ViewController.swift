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

    @IBOutlet weak var labelMoving: UILabel!
    var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        motionManager = CMMotionManager()
        motionManager.accelerometerUpdateInterval = 0.1
        
        motionManager.startAccelerometerUpdates(to: .main)
        {
            [weak self] (data: CMAccelerometerData?, error: Error?) in
            if (data?.acceleration) != nil {
                
                if (fabs((data?.acceleration.x)!) > 0.2) {
                    let x = 40.0 * CGFloat((data?.acceleration.x)!)
                    var y = 40.0 * CGFloat((data?.acceleration.y)!)
                    print("x—> \(x)\n")
                    print("y—> \(y)\n")
                    
                    if y < 0
                    {
                        y = fabs(y)
                    }
                    else
                    {
                        y = 0 - y
                    }
                    
                   
                    self?.labelMoving.frame.origin = CGPoint(x: (self?.labelMoving.frame.midX)! + x , y: (self?.labelMoving.frame.midY)! + y)
                   
                    
                    
                }
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

