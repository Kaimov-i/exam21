//
//  extention+UIView.swift
//  
//
//  Created by Ilman on 17.09.2025.
//

import UIKit

extension UIView {
    
    func countUIVewElements(_ views: UIView...) -> Int {
        var buttonCounter = 0
        
        for view in views {
            if view  is CustomButton {
                buttonCounter += 1
            }
        }
        return buttonCounter
    }
    
    func printAllSubviews(_ views: UIView...) {
        for view in views {
            if let button = view as? CustomButton {
                print(button.nameInstance ?? "Uknown name")
            }
            if let catView = view as? CustomCatView {
                print(catView.nameIstance ?? "Uknown name")
            }
        }
    }
}

