//
//  ViewController.swift
//  WebBrowser
//
//  Created by Max Chen on 2015/5/26.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!

    @IBOutlet var textURL: UITextField!

    @IBAction func pressGo(sender: AnyObject) {

        var str = textURL.text
        if !str.hasPrefix("http://"){
            str = "http://" + str
        }
        var url = NSURL(string: str)
        var request = NSURLRequest(URL: url!)
        webView!.loadRequest(request)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var url = NSURL(string: "https://www.google.com.tw")
        var request = NSURLRequest(URL: url!)
        webView!.loadRequest(request)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

