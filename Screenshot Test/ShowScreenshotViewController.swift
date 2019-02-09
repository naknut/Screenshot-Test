//
//  ShowScreenshotViewController.swift
//  Screenshot Test
//
//  Created by Marcus Isaksson on 2019-02-09.
//  Copyright © 2019 Naknut Industries. All rights reserved.
//

import UIKit

class ShowScreenshotViewController: UIViewController {

    @IBOutlet private weak var screenshotImageView: UIImageView!
    
    var screenshot: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenshotImageView.image = screenshot
    }
}
