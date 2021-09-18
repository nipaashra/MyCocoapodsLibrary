//
//  ViewController.swift
//  MyCocoapodsLibrary
//
//  Created by nipaashra on 09/18/2021.
//  Copyright (c) 2021 nipaashra. All rights reserved.
//

import UIKit
import MyCocoapodsLibrary


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            let log = Logger()
            log.printLog()
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flowers.jpeg",in: resourcesBundle,compatibleWith: nil)
        print(image)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

