//
//  LanguageManage.swift
//  Localizable
//
//  Created by SonNV-D1 on 12/13/19.
//  Copyright © 2019 SonNV-D1. All rights reserved.
//

import Foundation

enum Language: String {
    case en = "en"
    case vi = "vi"
}
class LanguageManager {
    
    static let instance = LanguageManager()
    
    private var enBundle: Bundle?
    private var viBundle: Bundle?
    
    init() {
        let enBundlePath = Bundle.main.path(forResource: Language.en.rawValue, ofType: "lproj")
        enBundle = Bundle(path: enBundlePath ?? "")
        let viBundlePath = Bundle.main.path(forResource: Language.vi.rawValue, ofType: "lproj")
        viBundle = Bundle(path: viBundlePath ?? "")
    }
    
    func localizable(_ key: String?) -> String? {
        var bundle: Bundle?
        guard let key = key else {return nil}
        switch Preferences.shared.currentLocale() {
        case Language.en.rawValue:
            bundle = enBundle
        default:
            bundle = viBundle
        }
        return NSLocalizedString(key, tableName: nil, bundle: bundle ?? Bundle.init(), value: key, comment: key)
    }
}
