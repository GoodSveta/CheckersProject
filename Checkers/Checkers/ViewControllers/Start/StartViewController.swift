//
//  StartViewController.swift
//  Checkers
//
//  Created by mac on 9.02.22.
//

import UIKit

class StartViewController: UIViewController {
        
        @IBOutlet weak var scrollView: UIScrollView!
        @IBOutlet weak var label: UILabel!
        @IBOutlet weak var textFieldText: UITextField!
        @IBOutlet weak var textFieldTextWhitePlayer: UITextField!
        @IBOutlet weak var labelName: UILabel!
        @IBOutlet weak var imageTwo: UIImageView!
        @IBOutlet weak var button: UIButton!
        @IBOutlet weak var pageControl: UIPageControl!
        @IBOutlet weak var imageBackground: UIImageView!
        
        var images: [UIImage] = []
        lazy var animationDuration = {
            return Double(images.count) / 30.0
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupStyle()
            setupAction()
            scrollView.delegate = self
          
            
            // MARK: GIF
            
            for i in 0...35 {
                if let image = UIImage(named: "Hvn_\(i)") {
                    images.append(image)
                }
            }
            imageTwo.animationImages = images
            imageTwo.animationRepeatCount = 15
            imageTwo.animationDuration = animationDuration
            imageTwo.startAnimating()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) { self.imageTwo.image = self.images.last;
                self.button.isHidden = false
            }
        }
        
        // MARK: STYLE
        
        func setupStyle() {
            setupLabelStyle()
            setupButtonStyle()
        }
        
        func setupLabelStyle() {
            label.text = "Welcom!"
            label.textColor = #colorLiteral(red: 0.3433472514, green: 0.3433472514, blue: 0.3433472514, alpha: 1)
            labelName.text = "Enter your name"
            labelName.textColor = #colorLiteral(red: 0.2602502108, green: 0.2602502108, blue: 0.2602502108, alpha: 1)
        }
        
        func setupButtonStyle() {
            button.setTitle("Done", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.2602502108, green: 0.2602502108, blue: 0.2602502108, alpha: 1)
            button.layer.cornerRadius = 10
            button.tintColor = .white
        }
        
        // MARK: Action
        func setupAction() {
            textFieldText.addTarget(self, action: #selector(buttonPressed), for: .editingChanged)
            
        }
        
        @objc func buttonPressed() {
            button.isEnabled = textFieldText.noOptionalText.count > 0
            }
        
        @IBAction func buttonDonePressed(_ sender: UIButton) {
           
            guard let mainVC = MainMenuViewController.getInstanceViewController else { return }
                UserDefaults.standard.set(textFieldText.text, forKey: "namePlayerGray")
                UserDefaults.standard.set(textFieldTextWhitePlayer.text, forKey: "namePlayerWhite")
                Settings.shared.viewControllerOneCompleted = true
                navigationController?.viewControllers = [mainVC]
            }
        }
    
    extension StartViewController: UIScrollViewDelegate {
        func scrollViewDidScroll(_ scrollView: UIScrollView) {

        }
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let onePageOffset = scrollView.contentSize.width / CGFloat(pageControl.numberOfPages)
            pageControl.currentPage = Int(scrollView.contentOffset.x / onePageOffset)
        }
    }


