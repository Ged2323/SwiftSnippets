//
//  ViewController.swift
//  PhotoDiary
//
//  Created by Gerard Grundy on 9/6/18.
//  Copyright © 2018 Gerard Grundy. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add,
                                     target: self,
                                     action: #selector(ViewController.addButton))
        navigationItem.rightBarButtonItem = button
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func addButton()
    {
        print("ADD pressed")
    }
}

