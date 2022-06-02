//
//  Api.swift
//  Vision
//
//  Created by Denys on 18.05.2022.
//

import UIKit

final class TextColored: NSObject {
    
    
    //singleton
    //
    
    func changeColor (button: UIButton!, quote: String, colorText1: UIColor, colorText2: UIColor, text1: String, text2 : String, font: UIFont){
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: colorText1 ,
        ]
       
        let textSecond = text2
        let coloredTextSecond = NSAttributedString(string: textSecond, attributes:[NSAttributedString.Key.foregroundColor: colorText2 , NSAttributedString.Key.font: font])
        let textSFirst = text1
        let mixedText = NSMutableAttributedString(string: textSFirst, attributes: attributes)
        mixedText.append(coloredTextSecond)
        button.setAttributedTitle(mixedText, for: .normal)
    }
    
    
}
