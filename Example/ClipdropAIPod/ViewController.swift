//
//  ViewController.swift
//  ClipdropAIPod
//
//  Created by joynalcu7@gmail.com on 07/10/2024.
//  Copyright (c) 2024 joynalcu7@gmail.com. All rights reserved.
//

import UIKit
import ClipdropAIPod

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let log = Logger()
        log.printLog()
        
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "worldIcon.png", in: resourcesBundle, compatibleWith: nil)
        print(image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

