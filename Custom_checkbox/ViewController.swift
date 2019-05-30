//
//  ViewController.swift
//  Custom_checkbox
//
//  Created by everis on 5/30/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CheckBoxDelegate {
    
    @IBOutlet weak var customCheck: CheckBox!
    
    func onClickButton(selected: Bool) {
        print("selected: \(selected)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customCheck.checkBoxDelegate = self
        
    }

    
    
}

