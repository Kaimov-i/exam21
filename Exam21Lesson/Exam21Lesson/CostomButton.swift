//
//  CostomButton.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

class CostomButton: UIButton {
    
    init(title: String, bgColor: UIColor) {
        super.init(frame: .zero)
        setupButton(title: title, bgColor: bgColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(title: String, bgColor: UIColor) {
        
    }
}
