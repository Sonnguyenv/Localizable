//
//  Preferences.swift
//  Localizable
//
//  Created by SonNV-D1 on 12/13/19.
//  Copyright © 2019 SonNV-D1. All rights reserved.
//

import Foundation

class Preferences {
    
    static let shared = Preferences()
    
    static let currentLocale = "CurrentLocale"
    static let defaultLocale = Language.vi
    
    func currentLocale() -> String {
        if let locale = UserDefaults.standard.string(forKey: Preferences.currentLocale) {
            return locale
        }
        return Preferences.defaultLocale.rawValue
    }
    
    func setLocale(_ locale: String) {
        UserDefaults.standard.set(locale, forKey: Preferences.currentLocale)
        UserDefaults.standard.synchronize()
    }
}
