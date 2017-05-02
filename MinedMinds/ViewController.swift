//
//  ViewController.swift
//  Mined Minds Mentoring
//
//  Created by Tula Ram Subba on 4/24/17.
//  Copyright © 2017 Tula Ram Subba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myShadowView: UIView!
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    var menuShowing = false

    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.contentSize.height = 1000
        myShadowView.layer.shadowOpacity = 1
        myShadowView.layer.shadowRadius = 6
        let url=URL(string: "http://mentor-mentee-app.herokuapp.com/")
        myWebView.loadRequest(URLRequest(url: url!))
      
    }
    
    @IBAction func openMenu(_ sender: Any) {
        if (menuShowing) {
            leadingConstraint.constant = -245
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else {
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
       }
        menuShowing = !menuShowing
        
    }

    func webViewDidStartLoad(_ : UIWebView) {
        
        myActivityIndicator.startAnimating()
        
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        
        myActivityIndicator.stopAnimating()
    
      }

   }  


