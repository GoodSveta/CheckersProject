//
//  LoadingViewController.swift
//  Checkers
//
//  Created by mac on 9.02.22.
//

import UIKit
import LTMorphingLabel

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var label: LTMorphingLabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startAnimation()
    }
    
    
    private func setupUI() {
        label.morphingEffect = .burn
        label.text = "checkers".localized
    }
    
    private func startAnimation() {
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                       options: [.curveEaseInOut]) {
            self.label.alpha = 0
        } completion: { _ in
            UIView.animate(withDuration: 0.5,
                           delay: 0.0,
                           options: [.curveEaseInOut]) {
                self.backgroundImageView.alpha = 0.0
            } completion: { _ in
//                if Settings.shared.viewControllerOneCompleted {
//                    guard let mainMenuViewController = MainMenuViewController.getInstanceViewController else { return }
//                    self.navigationController?.viewControllers = [mainMenuViewController]
                    //                    guard let gameViewController = GameViewController.getInstanceViewController else { return }
                    //                    self.navigationController?.viewControllers = [gameViewController]
//                } else {
                    guard let startVC = StartViewController.getInstanceViewController else { return }
                    self.navigationController?.viewControllers = [startVC]
//                }
            }
        }
    }
}
