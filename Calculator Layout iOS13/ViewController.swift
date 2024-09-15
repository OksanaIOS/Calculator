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
    
    private lazy var oneButton = CustomButton(text: "1", color: .blue)
    private lazy var twoButton = CustomButton(text: "2", color: .blue)
    private lazy var threeButton = CustomButton(text: "3", color: .blue)
    private lazy var fourButton = CustomButton(text: "4", color: .blue)
    private lazy var fiveButton = CustomButton(text: "5", color: .blue)
    private lazy var sixButton = CustomButton(text: "6", color: .blue)
    private lazy var sevenButton = CustomButton(text: "7", color: .blue)
    private lazy var eightButton = CustomButton(text: "8", color: .blue)
    private lazy var nineButton = CustomButton(text: "9", color: .blue)
    private lazy var pointButton = CustomButton(text: ".", color: .blue)
    private lazy var plusMinusButton = CustomButton(text: "+/-", color: .blue)
    private lazy var percentButton = CustomButton(text: "%", color: .blue)
    private lazy var acButton = CustomButton(text: "AC", color: .blue)
    private lazy var plusButton = CustomButton(text: "+", color: .blue)
    private lazy var minusButton = CustomButton(text: "-", color: .blue)
    private lazy var multiplierButton = CustomButton(text: "*", color: .blue)
    private lazy var equalButton = CustomButton(text: "=", color: .blue)
    private lazy var devisionButton = CustomButton(text: "÷", color: .blue)
    private lazy var zeroButton = CustomButton(text: "0", color: .blue)
    
    private lazy var bottomStack = CustomStack()
    
    private lazy var baseStackView: UIStackView = {
        let view = UIStackView()
        
        view.distribution = .fillEqually
        view.alignment = .fill
        view.axis = .vertical
        view.spacing = 1
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        
    }
    //MARK: -  func setupUI
    
    func setupUI() {
        view.addSubview(baseStackView)
        baseStackView.addArrangedSubview(topLabel)
        baseStackView.addArrangedSubview(fifthStack)
        baseStackView.addArrangedSubview(secondStack)
        baseStackView.addArrangedSubview(thirdStack)
        baseStackView.addArrangedSubview(fourthStack)
        baseStackView.addArrangedSubview(fifthStack)
        baseStackView.addArrangedSubview(percentButton)
        baseStackView.addArrangedSubview(plusMinusButton)
        baseStackView.addArrangedSubview(acButton)
        baseStackView.addArrangedSubview(devisionButton)
        
    }
    
    
    func setupConstraints() {
        let width = view.widthAnchor
        
        NSLayoutConstraint.activate([
        
        
        
        ])
    }
    
    
    
   final class CustomStack: UIStackView {
        override init(frame: CGRect) {
        super .init(frame: frame)
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

