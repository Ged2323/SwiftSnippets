//
//  ViewController.swift
//  Timer
//
//  Created by Gerard Grundy on 5/3/18.
//  Copyright © 2018 Gerard Grundy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer!
    var howManyHellos = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(triggerThisFunction), userInfo: nil, repeats: true)
        
    }

    @objc func triggerThisFunction()
    {
        howManyHellos += 1
       print("Hi there \(howManyHellos)")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

