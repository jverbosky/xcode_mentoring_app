//
//  mainPage.swift
//  Mined Minds Mentoring
//
//  Created by Tula Ram Subba on 5/1/17.
//  Copyright © 2017 Tula Ram Subba. All rights reserved.
//

import UIKit

class mainPage: UIViewController {

    @IBOutlet weak var mainView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url=URL(string: "http://mentor-mentee-app.herokuapp.com/login")
        mainView.loadRequest(URLRequest(url: url!))
    }


  }
