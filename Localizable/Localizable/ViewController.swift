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
    @IBOutlet weak var viButton: UIButton!
    @IBOutlet weak var enButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onUpdateLocale()
    }
    
    func onUpdateLocale() {
        label.text = "home".localized
        viButton.setTitle("vi".localized, for: .normal)
        enButton.setTitle("en".localized, for: .normal)
    }
    
    @IBAction func viButton(_ sender: UIButton) {
        Preferences.shared.setLocale(Language.vi.rawValue)
        onUpdateLocale()
    }
    
    @IBAction func enButton(_ sender: UIButton) {
        Preferences.shared.setLocale(Language.en.rawValue)
        onUpdateLocale()
    }
    
    
}
