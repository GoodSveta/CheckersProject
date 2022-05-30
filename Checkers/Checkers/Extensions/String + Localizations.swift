//
//  String + Localizations.swift
//  Checkers
//
//  Created by mac on 3.04.22.
//

import Foundation

extension String {
    var localized: String {
        guard let url = Bundle.main.url(forResource: Settings.shared.currentLanguageCode, withExtension: "lproj"),
              let langBundle = Bundle(url: url) else { return self }
    
    return NSLocalizedString(self, bundle: langBundle, comment: "")
    }
}
