//
//  Mentors.swift
//  Mined Minds Mentoring
//
//  Created by Tula Ram Subba on 4/30/17.
//  Copyright © 2017 Tula Ram Subba. All rights reserved.
//

import UIKit

class Mentors: UIViewController {

    @IBOutlet weak var mentorWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url=URL(string: "http://mentor-mentee-app.herokuapp.com/login")
        mentorWebView.loadRequest(URLRequest(url: url!))
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
