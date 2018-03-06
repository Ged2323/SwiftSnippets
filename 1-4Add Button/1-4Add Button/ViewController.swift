//
//  ViewController.swift
//  1-4Add Button
//
//  Created by Gerard Grundy on 6/3/18.
//  Copyright © 2018 Gerard Grundy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var count = 0
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        count += 1
        myLabel.text = "\(count)"
    }
    
}

