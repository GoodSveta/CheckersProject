//
//  Settings.swift
//  Checkers
//
//  Created by mac on 9.02.22.
//

import UIKit

class Settings: NSObject {
    enum UserDefaultsKeys: String {
        case viewControllerOneCompleted
        case imageBackground
        case makeMove
        case language
    }
    
    static let shared = Settings()
    
    var viewControllerOneCompleted: Bool {
        set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.viewControllerOneCompleted.rawValue)
        }
        
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.viewControllerOneCompleted.rawValue)
        }
    }
    
    var imageBackground: UIImage? {
        set {
            
            if let dataImage = newValue?.jpegData(compressionQuality: 0.96) {
                UserDefaults.standard.set(dataImage, forKey: UserDefaultsKeys.imageBackground.rawValue)
            } else {
                UserDefaults.standard.removeObject(forKey: UserDefaultsKeys.imageBackground.rawValue)
            }
            }
        get { if let dataImage = UserDefaults.standard.data(forKey: UserDefaultsKeys.imageBackground.rawValue) {
            return UIImage(data: dataImage)
        }
            return UIImage(named: "13")
        }
    }
    
    var makeMove: Bool {
        set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.makeMove.rawValue)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "AuthStateDidChange"), object: nil)
            
            if !newValue {  }
        }
        get { return UserDefaults.standard.bool(forKey: UserDefaultsKeys.makeMove.rawValue) }
    }

    let lanCode = ["ru", "en"]

    var currentLanguageCode: String {
        set {
            if let index = lanCode.firstIndex(of: newValue) {
                UserDefaults.standard.set(index, forKey: UserDefaultsKeys.language.rawValue)
            }
        }
        get {
            let indexCode = UserDefaults.standard.integer(forKey: UserDefaultsKeys.language.rawValue)
                        return lanCode[indexCode]
            }
        }
    
    var isSubscriber = true
}
