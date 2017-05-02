//
//  Request.swift
//  Mined Minds Mentoring
//
//  Created by Tula Ram Subba on 5/2/17.
//  Copyright © 2017 Tula Ram Subba. All rights reserved.
//

import UIKit

class Request: UIViewController {

    @IBOutlet weak var requestView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url=URL(string: "http://mentor-mentee-app.herokuapp.com/login")
        requestView.loadRequest(URLRequest(url: url!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
