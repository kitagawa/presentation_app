//
//  ViewController.swift
//  Presentation
//
//  Created by 北川真理 on 2017/10/18.
//  Copyright © 2017年 北川真理. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var url:String = "https://google.com/"
    var targetURL = Bundle.main.path(forResource: "index", ofType: "html");
    var videoURL = Bundle.main.path(forResource: "animation1017", ofType: "mp4");
    
    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.frame = self.view.bounds
        webview.allowsInlineMediaPlayback = true
        
        
//        let htmlString:NSString = NSString(format: "<video id='video' width='300' height='200' src='file://animation1017.mp4' controls autoplay></video>");
//        
//        webview.loadHTMLString(htmlString as String, baseURL:nil)
        let requestURL = NSURL(string: targetURL!)
        let request = NSURLRequest(url: requestURL! as URL)
        webview.loadRequest(request as URLRequest)
//        let videoUrl:NSString = "http://hls-sample.s3-website-ap-northeast-1.amazonaws.com/index.m3u8";
//        let videoUrl:NSString = "file:://animation1017.mp4";
//        let videoUrl = Bundle.main.path(forResource: "animation1017", ofType: "mp4");
//        let htmlString:NSString = NSString(format: "<video width='300' height='200' src='file://%@' controls autoplay playsinline webkit-playsinline></video>",videoUrl!);
//        let imageUrl = Bundle.main.path(forResource: "icon", ofType: "jpg");
//        let htmlString:NSString = NSString(format: "<img width='300' height='200' src='file://%@'></img>",imageUrl!);
//        webview.loadHTMLString(htmlString as String, baseURL: nil);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

