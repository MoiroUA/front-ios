//
//  RoundedButton.swift
//  RegistrationMenu
//
//  Created by Denys on 10.05.2022.
//

import UIKit

class RoundedButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customisation()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customisation()
    }
    
    private func customisation() {
        
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = true
        
    }
}
