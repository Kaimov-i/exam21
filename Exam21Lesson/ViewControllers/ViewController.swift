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
    private var catImage = CustomCatView()
    private let catDescription = UILabel()
    private let catName = UILabel()
    
    private let buttonLast = CustomButton(title: "Last", bgColor: .systemBlue, titleColor: .white)
    private let buttonNext = CustomButton(title: "Next", bgColor: .white, titleColor: .black)
    private let buttonFirst = CustomButton(title: "First", bgColor: .systemRed, titleColor: .white)
    
    var catsDataManager: CatsDataManagable
    
    init(catsDataManager: CatsDataManagable) {
        self.catsDataManager = catsDataManager
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buttonLast.nameInstance = "ButtonLast"
        buttonNext.nameInstance = "ButtonNext"
        buttonFirst.nameInstance = "ButtonFirst"
        catImage.nameIstance = "CustomCatView"
        
        view.addSubview(stackView)
        view.addSubview(buttonFirst)
        setupStackView()
        setupLayout()
        setupButtonsStackView()
        setupImage()
        setupTextLabel()
        setupButtons()
        
        let viewCounter = view.countUIVewElements(buttonLast, buttonNext, buttonFirst, catImage)
        print(viewCounter)
        view.printAllSubviews(buttonLast, buttonNext, buttonFirst, catImage)
    }
    
    private func last() -> Cat {
        catsDataManager.getLast()
        
    }
    
    private func next() -> Cat  {
        catsDataManager.getNext()
    }
    
    private func first() -> Cat  {
        catsDataManager.getFierst()
    }
    
    private func setupModel(cat: Cat) {
        catDescription.text = cat.catDescription
        catImage.updateImage(imageName: cat.imageName)
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
        catImage.updateImage(imageName: catsDataManager.getCurent().imageName)
        
        catImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        catImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    // MARK: setup Text Label
    func setupTextLabel() {
        catDescription.text = "\(catsDataManager.getCurent().name): \(catsDataManager.getCurent().catDescription)"
        catDescription.numberOfLines = 0
        catDescription.textAlignment = .natural
        
        catDescription.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    // MARK: - setup Buttons StackView
    func setupButtonsStackView() {
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.axis = .horizontal
        buttonsStackView.spacing = 40
        buttonsStackView.alignment = .fill
        
        buttonsStackView.addArrangedSubview(buttonLast)
        buttonsStackView.addArrangedSubview(buttonNext)
    }
    // MARK: Button Actions
 
    //MARK: Setup Button
    func setupButtons() {
        buttonLast.delegate = self
        buttonNext.delegate = self
        buttonFirst.delegate = self
        
        buttonNext.setTitleColor(.black, for: .normal)
        buttonFirst.setTitleColor(.white, for: .normal)
        
        buttonFirst.widthAnchor.constraint(equalTo: buttonLast.widthAnchor).isActive = true
        buttonFirst.layer.shadowOpacity = 0
    }
}

extension ViewController: ICostomButtonDelegate {
    
    func buttonDidTap(_ button: UIButton) {
        
        switch button {
        case buttonLast: setupModel(cat: last())
        case buttonNext: setupModel(cat: next())
        case buttonFirst: setupModel(cat: first())
        default:
            break
        }
        
    }
}
