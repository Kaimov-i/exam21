//
//  ViewController.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var stackView = UIStackView()
    let image = CostomImageView(imageName: "meyn")
    let textLabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(stackView)
        setupStacView()
        setupLayout()
    }


}

extension ViewController {
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(image)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            stackView.heightAnchor.constraint(equalToConstant: 600)
        ])
    }
    
    private func setupStacView() {
        stackView.distribution = .fillEqually
        stackView.alignment = .center
    }
}

