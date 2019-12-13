//
//  ViewController.swift
//  Localizable
//
//  Created by SonNV-D1 on 12/13/19.
//  Copyright © 2019 SonNV-D1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onUpdateLocale()
    }
    
    func onUpdateLocale() {
        label.text = LanguageManager.instance.localizable("home")
    }
    
    @IBAction func viButton(_ sender: Any) {
        Preferences.shared.setLocale(Language.vi.rawValue)
        onUpdateLocale()
    }
    
    @IBAction func enButton(_ sender: Any) {
        Preferences.shared.setLocale(Language.en.rawValue)
        onUpdateLocale()
    }
    
    
}
