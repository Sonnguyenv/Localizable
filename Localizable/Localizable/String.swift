//
//  String.swift
//  Localizable
//
//  Created by SonNV-D1 on 12/16/19.
//  Copyright © 2019 SonNV-D1. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        var bundle: Bundle?
        let locale = UserDefaults.standard.string(forKey: Preferences.currentLocale)
        let viBundlePath = Bundle.main.path(forResource: Language.vi.rawValue, ofType: "lproj")
        let enBundlePath = Bundle.main.path(forResource: Language.en.rawValue, ofType: "lproj")
        switch locale {
        case Language.vi.rawValue:
            bundle = Bundle(path: viBundlePath ?? "")
        default:
            bundle = Bundle(path: enBundlePath ?? "")
        }
        return NSLocalizedString(self, bundle: bundle ?? Bundle.init(), comment: self)
    }
}
