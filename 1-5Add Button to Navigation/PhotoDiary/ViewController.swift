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
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addButton))
        

        

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

