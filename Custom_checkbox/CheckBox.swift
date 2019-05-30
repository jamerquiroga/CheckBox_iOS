//
//  CheckBox.swift
//  Custom_checkbox
//
//  Created by everis on 5/30/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import UIKit

protocol CheckBoxDelegate {
    
    func onClickButton(selected: Bool)
    
}

class CheckBox: UIButton {
    
    var checkBoxDelegate: CheckBoxDelegate?

    var selectedCheck = UIImage(named: "CheckSelected")! as UIImage
    var unSelectedCheck = UIImage(named: "CheckUnSelected")! as UIImage
    
    //Bool property
    var isChecked: Bool = false{
        didSet{
            if isChecked == true {
                self.setImage(selectedCheck, for: .normal)
            }else{
                self.setImage(unSelectedCheck, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
        self.isChecked = false
    
    }
    
    @objc func buttonClicked(sender: UIButton){
        
        if sender == self {
        
            self.isChecked = !isChecked
            
            if(self.checkBoxDelegate != nil){
                self.checkBoxDelegate?.onClickButton(selected: isChecked)
            }
            
        }
    }
    
}
