//
//  ViewController.swift
//  Connect Label
//
//  Created by Gerard Grundy on 6/3/18.
//  Copyright © 2018 Gerard Grundy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLbl.text = "My name is Gerard"
        nameLbl.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

