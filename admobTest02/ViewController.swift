//
//  ViewController.swift
//  admobTest02
//
//  Created by Masayuki WATANABE on 2020/10/06.
//
import GoogleMobileAds      // これ
import UIKit

class ViewController: UIViewController {
    
    var bannerView: GADBannerView! //追加した
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // この場合
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

        addBannerViewToView(bannerView)
    
    
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"  //テスト用ID
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
      }

      func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
          [NSLayoutConstraint(item: bannerView,
                              attribute: .bottom,
                              relatedBy: .equal,
                              toItem: bottomLayoutGuide,
                              attribute: .top,
                              multiplier: 1,
                              constant: 0),
           NSLayoutConstraint(item: bannerView,
                              attribute: .centerX,
                              relatedBy: .equal,
                              toItem: view,
                              attribute: .centerX,
                              multiplier: 1,
                              constant: 0)
          ])
       }
        // ここまで
}

