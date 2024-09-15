//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UIElements
    
    private lazy var firstStack = CustomStack()
    private lazy var secondStack = CustomStack()
    private lazy var thirdStack = CustomStack()
    private lazy var fourthStack = CustomStack()
    private lazy var fifthStack = CustomStack()
    private lazy var topLabel: UILabel = {
        $0.text = "0"
        $0.textAlignment = .right
        $0.font = .systemFont(ofSize: 30, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .white
        return $0
    }(UILabel())
    
    
    //MARK: - Setup colors
    private let greyColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
    private let blueColor = UIColor(red: 82/255, green: 170/255, blue: 241/255, alpha: 1)
    private let orangeColor = UIColor(red: 240/255, green: 153/255, blue: 55/255, alpha: 1)
    
    private lazy var percentButton = CustomButton(text: "%", color: greyColor)
    private lazy var plusMinusButton = CustomButton(text: "+/-", color: greyColor)
    private lazy var acButton = CustomButton(text: "AC", color: greyColor)
    
    private lazy var oneButton = CustomButton(text: "1", color: blueColor)
    private lazy var twoButton = CustomButton(text: "2", color: blueColor)
    private lazy var threeButton = CustomButton(text: "3", color: blueColor)
    private lazy var fourButton = CustomButton(text: "4", color: blueColor)
    private lazy var fiveButton = CustomButton(text: "5", color: blueColor)
    private lazy var sixButton = CustomButton(text: "6", color: blueColor)
    private lazy var sevenButton = CustomButton(text: "7", color: blueColor)
    private lazy var eightButton = CustomButton(text: "8", color: blueColor)
    private lazy var nineButton = CustomButton(text: "9", color: blueColor)
    private lazy var pointButton = CustomButton(text: ".", color: blueColor)
    private lazy var zeroButton = CustomButton(text: "0", color: blueColor)


    private lazy var plusButton = CustomButton(text: "+", color: orangeColor)
    private lazy var minusButton = CustomButton(text: "-", color: orangeColor)
    private lazy var multiplierButton = CustomButton(text: "*", color: orangeColor)
    private lazy var equalButton = CustomButton(text: "=", color: orangeColor)
    private lazy var devisionButton = CustomButton(text: "÷", color: orangeColor)
    
    private lazy var bottomStack = CustomStack()
    
    private lazy var baseStackView: UIStackView = {
        let view = UIStackView()
        
        view.distribution = .fillEqually
        view.alignment = .fill
        view.axis = .vertical
        view.spacing = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupUI()
    }
    //MARK: -  func setupUI
    
    func setupUI() {
        view.addSubview(baseStackView)
        baseStackView.addArrangedSubview(topLabel)
        baseStackView.addArrangedSubview(firstStack)
        baseStackView.addArrangedSubview(secondStack)
        baseStackView.addArrangedSubview(thirdStack)
        baseStackView.addArrangedSubview(fourthStack)
        baseStackView.addArrangedSubview(fifthStack)
        
        firstStack.addArrangedSubview(percentButton)
        firstStack.addArrangedSubview(plusMinusButton)
        firstStack.addArrangedSubview(acButton)
        firstStack.addArrangedSubview(devisionButton)
        
        secondStack.addArrangedSubview(sevenButton)
        secondStack.addArrangedSubview(eightButton)
        secondStack.addArrangedSubview(nineButton)
        secondStack.addArrangedSubview(multiplierButton)
        
        thirdStack.addArrangedSubview(fourButton)
        thirdStack.addArrangedSubview(fiveButton)
        thirdStack.addArrangedSubview(sixButton)
        thirdStack.addArrangedSubview(minusButton)
        
        fourthStack.addArrangedSubview(oneButton)
        fourthStack.addArrangedSubview(twoButton)
        fourthStack.addArrangedSubview(threeButton)
        fourthStack.addArrangedSubview(plusButton)
        
        fifthStack.addArrangedSubview(zeroButton)
        bottomStack.addArrangedSubview(pointButton)
        bottomStack.addArrangedSubview(equalButton)
        fifthStack.addArrangedSubview(bottomStack)
        
        setupConstraints()
        
    }
    
  //MARK: - func setupConstraints
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            baseStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            baseStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            baseStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            baseStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            
          
        ])
    }
    
    
    //MARK: - class CustomStack and CustomButton
    
   final class CustomStack: UIStackView {
        override init(frame: CGRect) {
        super .init(frame: frame)
            createStack()
        }
        
        required init(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        func createStack() {
            distribution = .fillEqually
            alignment = .fill
            axis = .horizontal
            spacing = 1
        }

    }
    final class CustomButton: UIButton {
        let text: String
        let color: UIColor
        init(text: String, color: UIColor) {
            self.text = text
            self.color = color
            super .init(frame: .zero)
            setTitle(text, for: .normal)
            backgroundColor = color
            setTitleColor(.white, for: .normal)
            translatesAutoresizingMaskIntoConstraints = false
        
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        func createButton() {
            setTitle(text, for: .normal)
            backgroundColor = color
            setTitleColor(.white, for: .normal)
        }
    }
}


