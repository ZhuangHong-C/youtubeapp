///Users/zhuanghong/Desktop/Xcode/YoutubeApp/YoutubeApp.xcodeproj
//  ViewController.swift
//  YoutubeApp
//
//  Created by Chong Zhuang Hong on 15/06/2020.
//  Copyright © 2020 Chong Zhuang Hong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

