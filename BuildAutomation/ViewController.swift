//
//  ViewController.swift
//  BuildAutomation
//
//  Created by tkwatanabe on 2017/07/25.
//  Copyright © 2017年 tkwatanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let env = ProcessInfo.processInfo.environment
        var stringURL = "http://www.shinwart.co.jp/"
        #if DEBUG
            if let url = env["debug"] {
                stringURL = url
            }
        #elseif DEVELOP
            if let url = env["develop"] {
                stringURL = url
            }
        #else
            print("Release")
        #endif
        guard let requestURL = URL(string: stringURL) else { return }
        let req = URLRequest(url: requestURL)
        webView.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

