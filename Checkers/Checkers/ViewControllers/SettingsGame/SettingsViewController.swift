//
//  SettingsViewController.swift
//  Checkers
//
//  Created by mac on 16.02.22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var labelSettings: UILabel!
    @IBOutlet weak var labelBgImage: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelLanguage: UILabel!
    @IBOutlet weak var buttonBack: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI ()
        
    }
    private func setupUI () {
       
        imageView.image = Settings.shared.imageBackground
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 35
        setLocalization()
    }
    
    private func setLocalization() {
        labelSettings.text = "labelSettings_text".localized
        labelBgImage.text = "labelBgImage_text".localized
        labelLanguage.text = "labelLanguage_text".localized
        buttonBack.setTitle("buttonBack_text".localized, for: .normal)
    }
    
    
    @IBAction func settingTapGestureRecognizer(_ sender: Any) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let changeImageBg = UIAlertAction(title: "Change", style: .default) { _ in
          
            let pickerController = UIImagePickerController()
            pickerController.delegate = self
            pickerController.allowsEditing = true //возможность изменить картинку
            pickerController.sourceType = .photoLibrary
            self.present(pickerController, animated: true, completion: nil)
            }
            let cancelImageBg = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let deleteImageBg = UIAlertAction(title: "Delete", style: .default) { _ in
            self.imageView.image = UIImage(named: "13")
            Settings.shared.imageBackground = UIImage(named: "13")
            
        }
   
        alert.addAction(changeImageBg)
        alert.addAction(cancelImageBg)
        alert.addAction(deleteImageBg)
        
        present(alert, animated: true, completion: nil)

    }
    
    @IBAction func changeLanguage(_ sender: UIButton) {
        Settings.shared.currentLanguageCode = Settings.shared.lanCode[sender.tag]
        setLocalization()
        
    }
    
    
    @IBAction func backButtonClick(_ sender: UIButton) {
        guard let mainVC = MainMenuViewController.getInstanceViewController else { return }
        self.navigationController?.viewControllers = [mainVC]
    }
    
    
}
extension SettingsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] as? UIImage {
            Settings.shared.imageBackground = image
            self.imageView.image = image
        }
        
        picker.dismiss(animated: true, completion: nil)
    } // вернет измененную картинку
    
}
