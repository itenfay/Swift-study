//
//  ViewController.swift
//  AccessControl
//
//  Created by dyf on 2017/10/30.
//  Copyright © 2017 dyf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        AccessControlUsage().execute()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

