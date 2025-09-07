//
//  CostomButton.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

class CostomButton: UIButton {
    
    init(title: String, bgColor: UIColor, titleColor: UIColor) {
        super.init(frame: .zero)
        setupButton(title: title, bgColor: bgColor, titleColor: titleColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    }
    
    private func setupButton(title: String, bgColor: UIColor, titleColor: UIColor) {
        configuration = .bordered()
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = bgColor
        
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 8, height: 8)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.7
    }
}
