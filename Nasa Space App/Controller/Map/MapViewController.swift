//
//  MapViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/7/22.
//

import UIKit
import WebKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var outView: UIView!
    
    @IBOutlet weak var queryTravelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.webView.load(URLRequest(url: URL(string: "https://www.google.com/sky/#latitude=82.20919538369394&longitude=13.211958660829456&zoom=9&Spitzer=0.00&ChandraXO=0.00&Galex=0.00&IRAS=0.00&WMAP=0.00&Cassini=0.00&slide=1&mI=-1&oI=-1")!))
        
        outView.layer.cornerRadius = 40.0
        innerView.layer.cornerRadius = 40.0
        
        queryTravelButton.layer.borderWidth = 1
        queryTravelButton.layer.borderColor = UIColor.white.cgColor
        queryTravelButton.layer.cornerRadius = 9.0
    }
    

    @IBAction func queryTravelButtonPressed(_ sender: UIButton) {
    }
    

}
