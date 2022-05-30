//
//  MainMenuViewController.swift
//  Checkers
//
//  Created by mac on 11.02.22.
//

import UIKit
import GoogleMobileAds

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var startButtonView: StartButtonView!
    @IBOutlet weak var buttonAbout: UIButton!
    @IBOutlet weak var buttonScore: UIButton!
    @IBOutlet weak var buttonSettings: UIButton!
    private var interstitial: GADInterstitialAd?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func loadIntersAds() {
        let request = GADRequest()
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-3940256099942544/4411468910",
                               request: request,
                               completionHandler: { [self] ad, error in
            if let error = error {
                print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                return
            }
            interstitial = ad
            interstitial?.fullScreenContentDelegate = self
            interstitial?.present(fromRootViewController: self)
        })
    }
    
    @IBAction func startButtonGestureRecognizer(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                       options: [.curveEaseInOut]) {
            self.buttonAbout.alpha = 0.0
            
        } completion: { _ in
            UIView.animate(withDuration: 0.5,
                           delay: 0.0,
                           options: [.curveEaseInOut]) {
                self.buttonSettings.alpha = 0.0
            } completion: { _ in
                UIView.animate(withDuration: 0.5,
                               delay: 0.0,
                               options: [.curveEaseInOut]) {
                    self.buttonScore.alpha = 0.0
                } completion: { _ in
                    UIView.animate(withDuration: 0.5,
                                   delay: 0.0,
                                   options: [.curveEaseInOut]) {
                        self.startButtonView.alpha = 0.0
                    } completion: { _ in
                        self.loadIntersAds()
                        
                    }
                }
            }
        }
    }
    
    @IBAction func settingsTouchUpInside(_ sender: Any) {
        guard let settingsVC = SettingsViewController.getInstanceViewController else { return }
        self.navigationController?.viewControllers = [settingsVC]
        
    }
    
    @IBAction func scoreTouchUpInside(_ sender: UIButton) {
        guard let scoreVC = ScoreViewController.getInstanceViewController else { return }
        self.navigationController?.viewControllers = [scoreVC]    }
    
    
}

extension MainMenuViewController: GADFullScreenContentDelegate {
    func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("Ad did fail to present full screen content.")
    }
    
    /// Tells the delegate that the ad will present full screen content.
    func adWillPresentFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad will present full screen content.")
    }
    
    /// Tells the delegate that the ad dismissed full screen content.
    func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        guard let vc = GameViewController.getInstanceViewController as? GameViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
        
        print("Ad did dismiss full screen content.")
    }
}
