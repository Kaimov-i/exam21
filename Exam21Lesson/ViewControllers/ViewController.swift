//
//  ViewController.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit



class ViewController: UIViewController {
    
    private var stackView = UIStackView()
    private var buttonsStackView = UIStackView()
    private var catImage = CostomCatView()
    private let catDescription = UILabel()
    private let catName = UILabel()
    
    private let buttonLast = CostomButton(title: "Last", bgColor: .systemBlue, titleColor: .white)
    private let buttonNext = CostomButton(title: "Next", bgColor: .white, titleColor: .black)
    private let buttonFirst = CostomButton(title: "First", bgColor: .systemRed, titleColor: .white)
    
    private var catsManager = CatsDataManager(cats: CatsManager().getCats())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stackView)
        view.addSubview(buttonFirst)
        setupStackView()
        setupLayout()
        setupButtonsStackView()
        setupButtons()
        setupImage()
        setupTextLabel()
    }
    
    private func last() {
        let cat = catsManager.getLast()
    
    }
    
    private func next() {
        let cat = catsManager.getNext()
        
    }
    
    private func fierst() {
        let cat = catsManager.getFierst()
        
    }
    
    private func setupModel(cat: Cat) {
        catDescription.text = cat.description
        catImage.setupImage(imageName: cat.imageName)

    }
}


extension ViewController {
    // MARK: - setup Layout
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        buttonFirst.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(catImage)
        stackView.addArrangedSubview(catDescription)
        stackView.addArrangedSubview(buttonsStackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            
            buttonsStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            buttonsStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            
            buttonFirst.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 150),
            buttonFirst.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

private extension ViewController {
    
    // MARK: - setup stack View
    func setupStackView() {
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 60
    }
    
    // MARK: - stupe Image
    func setupImage() {
        catImage.setupImage(imageName: catsManager.getCurent().imageName)
        
        catImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        catImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    // MARK: setup Text Label
    func setupTextLabel() {
        catDescription.text = "\(catsManager.getCurent().name): \(catsManager.getCurent().description)"
        catDescription.numberOfLines = 0
        catDescription.textAlignment = .natural
        
        catDescription.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    // MARK: - stupButtons
    func setupButtonsStackView() {
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.axis = .horizontal
        buttonsStackView.spacing = 40
        buttonsStackView.alignment = .fill
        
        buttonsStackView.addArrangedSubview(buttonLast)
        buttonsStackView.addArrangedSubview(buttonNext)
    }
    
    func setupButtons() {
        
        let lastButtonAction = UIAction { _ in
           
        }
        
        let nextButtonAction = UIAction { _ in
            
        }
        
        let fierstButtonAction = UIAction { _ in
        
        }
        
        
        
        buttonLast.addAction(lastButtonAction, for: .touchUpInside)
        buttonNext.addAction(nextButtonAction, for: .touchUpInside)
        buttonFirst.addAction(fierstButtonAction, for: .touchUpInside)
        
        buttonNext.setTitleColor(.black, for: .normal)
        buttonFirst.setTitleColor(.white, for: .normal)
        
        buttonLast.addAction(lastButtonAction, for: .touchUpInside)
        buttonNext.addAction(nextButtonAction, for: .touchUpInside)
        
        buttonFirst.widthAnchor.constraint(equalTo: buttonLast.widthAnchor).isActive = true
        buttonFirst.layer.shadowOpacity = 0
    }
}



