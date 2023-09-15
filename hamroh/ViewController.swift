//
//  ViewController.swift
//  hamroh
//
//  Created by Firuz on 14/09/23.
//

import UIKit
import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate  {

    var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://hamroh.gram.tj/app/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}

