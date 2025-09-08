//
//  CostomImageView.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

class CostomCatView: UIView {
    private let imageView = UIImageView()
    
    init() {
        super.init(frame: .zero)
        setupImage()
        setupLayout()
        shadow()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    }
    
    func updateImage(imageName: String) {
        imageView.image = UIImage(named: imageName)
    }
    
}

extension CostomCatView {
    
   private func setupImage() {
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        addSubview(imageView)
    }
    
    private func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func shadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.7
    }
    
    
}

