//
//  ViewController.swift
//  admobTest02
//
//  Created by Masayuki WATANABE on 2020/10/06.
//　InterfaceBuilderでバナー出してみる！

import GoogleMobileAds      // これ
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bannerView:  GADBannerView!
    
    //var bannerView: GADBannerView! //追加した
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Google Mobile Ads SDK version: \(GADMobileAds.sharedInstance().sdkVersion)")
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
      }


}

