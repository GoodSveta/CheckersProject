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
    let imageCheckers = UIImage(named: "checkers")
    private let animationRepeatDuration: CFTimeInterval = 2.0
    private let rotationAnimatonKey: String = "rotationAnimation"
    
    @IBOutlet weak var imageView: UIImageView!
//    var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setLocalization()
        imageView.alpha = 0.0
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
    
    private func setLocalization() {
        buttonAbout.setTitle("button_about".localized, for: .normal)
        buttonScore.setTitle("button_score".localized, for: .normal)
        buttonSettings.setTitle("button_settings".localized, for: .normal)
    }
    
    func imageAnimation() {
//        guard let image = UIImage(named: "checkers") else { return }
//        let imageSize = CGSize(width: image.size.width / 5.0, height: image.size.height / 5.0)
//        imageView = UIImageView(frame: CGRect(origin: CGPoint(
//            x: view.bounds.width / 2.5 - (imageSize.width / 2.5),
//            y: view.bounds.height - imageSize.height), size: .zero))
//        imageView.image = image
//        imageView.frame.size = imageSize
        imageView.alpha = 1.0
//        imageView.isUserInteractionEnabled = true
//        view.addSubview(imageView)
        
//        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse]) {
////            imageView.frame.origin = CGPoint(x: 0.0, y: 44.0)
//            self.imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5).translatedBy(x: -50, y: -800)
//
////                .rotated(by: 45.0 * 180.0 / .pi).translatedBy(x: 350, y: 650)
//        } completion: { _ in
////            imageView.frame.origin = CGPoint(
////                x: self.view.bounds.width / 2.0 - (imageSize.width / 2.0),
////                y: self.view.bounds.height - imageSize.height)
//        }
   
        let animation = CABasicAnimation(keyPath: "position.y")
        animation.toValue = 44.0
        animation.repeatCount = 1.0
        animation.duration = 2.5
        animation.beginTime = CACurrentMediaTime()
        animation.isRemovedOnCompletion = false
        animation.autoreverses = true
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation.fillMode = .both
        self.imageView.layer.add(animation, forKey: "originYAnimation")
        
        let animation2 = CABasicAnimation(keyPath: "transform.rotation.z")
        animation2.toValue = NSNumber(value: Double.pi * 2)
        animation2.repeatCount = 2.0
        animation2.duration = 2.0
        animation2.beginTime = CACurrentMediaTime()
        animation2.isRemovedOnCompletion = false
        animation2.autoreverses = true
        animation2.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation2.fillMode = .both
        self.imageView.layer.add(animation2, forKey: "rotationYAnimation")

    }
    
    func rotateSquare() {
            let rotation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi * 2)
            rotation.duration = 1
        rotation.isCumulative = true
            rotation.repeatCount = Float.greatestFiniteMagnitude
        self.view.layer.add(rotation, forKey: "rotationAnimation")
        
        }
    
    @IBAction func startButtonGestureRecognizer(_ sender: Any) {
        
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                       options: [.curveEaseInOut]) {
            self.startButtonView.alpha = 0.0
            self.imageAnimation()
        } completion: { _ in
            UIView.animate(withDuration: 0.5,
                           delay: 0.0,
                           options: [.curveEaseInOut]) {
                self.buttonScore.alpha = 0.0
                self.imageView.alpha = 1
            } completion: { _ in
                UIView.animate(withDuration: 0.5,
                               delay: 0.0,
                               options: [.curveEaseInOut]) {
                    self.buttonSettings.alpha = 0.0
                } completion: { _ in
                    UIView.animate(withDuration: 0.5,
                                   delay: 0.0,
                                   options: [.curveEaseInOut]) {
                        self.buttonAbout.alpha = 0.0
                    } completion: { _ in
                        
                        UIView.transition(with: self.imageView, duration: 1, options: .transitionFlipFromBottom, animations: {self.imageView.alpha = 0.0})
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
        self.navigationController?.viewControllers = [scoreVC]
    }
    
}

extension MainMenuViewController: GADFullScreenContentDelegate {
    func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("Ad did fail to present full screen content.")
        guard let vc = GameViewController.getInstanceViewController as? GameViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
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
