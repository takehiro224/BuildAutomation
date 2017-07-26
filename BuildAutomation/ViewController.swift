//
//  ViewController.swift
//  BuildAutomation
//
//  Created by tkwatanabe on 2017/07/25.
//  Copyright © 2017年 tkwatanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "default"

        let env = ProcessInfo.processInfo.environment
        #if DEBUG
            if let str = env["debug"] {
                label.text = str
            }
        #elseif DEVELOP
            if let str = env["develop"] {
                label.text = str
            }
        #else
            print("Release")
        #endif

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

