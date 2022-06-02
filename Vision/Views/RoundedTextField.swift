//
//  RoundedTextField.swift
//  RegistrationMenu
//
//  Created by Denys on 07.05.2022.
//

import UIKit

class RoundedTextField: UITextField {
    var textPadding = UIEdgeInsets(
        top: 10,
        left: 20,
        bottom: 10,
        right: 20
    )
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customisation()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customisation()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    private func customisation() {
        
        // add the shadow to the base view
        self.backgroundColor = UIColor.clear
        self.layer.shadowColor = UIColor(named: "AppBlack")?.cgColor
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowOpacity = 0.15
        self.layer.shadowRadius = 4.0
        
        
        // add the border to subview
        let borderView = UIView()
        borderView.frame = self.bounds
        borderView.layer.cornerRadius = 20
        borderView.layer.borderColor = UIColor(named: "AppBlack")?.cgColor
        borderView.layer.masksToBounds = true
        borderView.isUserInteractionEnabled = false
        self.addSubview(borderView)
        
        // add any other subcontent that you want clipped
        let otherSubContent = UIView()
        otherSubContent.backgroundColor = UIColor(named: "AppWhite")
        otherSubContent.frame = borderView.bounds
        borderView.addSubview(otherSubContent)
       
    }
}
