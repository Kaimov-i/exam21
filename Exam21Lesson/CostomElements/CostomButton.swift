//
//  CostomButton.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

protocol ICostomButtonDelegate {
    func buttonDidTap(_ button: UIButton)
}


class CostomButton: UIButton {
    
    var delegate: ICostomButtonDelegate?
    
    init(title: String, bgColor: UIColor, titleColor: UIColor) {
        super.init(frame: .zero)
        setupButton(title: title, bgColor: bgColor, titleColor: titleColor)
        actions()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    }
    
    func actions() {
        let buttonAction = UIAction { [self] _ in
            delegate?.buttonDidTap(self)
        }
        addAction(buttonAction, for: .touchUpInside)
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
