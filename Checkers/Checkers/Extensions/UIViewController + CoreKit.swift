//
//  UIViewController + CoreKit.swift
//  Checkers
//
//  Created by mac on 9.02.22.
//

import UIKit

extension UIViewController {
    static var getInstanceViewController: UIViewController? {
        return UIStoryboard(name: String(describing: self), bundle: nil).instantiateInitialViewController()
    }
    
    static func getViewController(with identifier: String) -> UIViewController? {
        return UIStoryboard(name: String(describing: self), bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
}
extension UITextField {
    var noOptionalText: String {
        return self.text ?? ""
    }
}
