//
//  ViewController.swift
//  Screenshot Test
//
//  Created by Marcus Isaksson on 2019-02-09.
//  Copyright © 2019 Naknut Industries. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet private weak var webView: WKWebView!
    
    var screenshot: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: URL(string: "https://google.com")!))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as! ShowScreenshotViewController).screenshot = screenshot!
    }
    
    @IBAction func takeScreenshotTapped(_ sender: Any) {
        UIGraphicsBeginImageContextWithOptions(UIScreen.main.bounds.size, false, UIScreen.main.scale)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        screenshot = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        performSegue(withIdentifier: "show", sender: self)
    }
}

