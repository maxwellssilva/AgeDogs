//
//  ViewController.swift
//  AgeDogs
//
//  Created by Maxwell da Silva e Silva on 16/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "wallpaper")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "dog")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Digite a idade do seu cachorro para descobrir a idade em anos humanos"
        label.numberOfLines = 0
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var idadeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Digite a idade"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var idadeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Descobrir a idade", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
//        button.layer.borderColor = UIColor.lightGray.cgColor
//        button.layer.borderWidth = 0.8
//        button.layer.cornerRadius = 8
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupComponents()
        selectButtonResult()
    }
    
    
    
    func selectButtonResult() {
        idadeButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
        
    @objc func buttonTapped() {
        alteraTextoResultado()
    }

    func alteraTextoResultado() {
        let idade = Int(idadeTextField.text!)! * 7
        resultLabel.text = "A idade do cachorro em anos humanos é " + String(idade)
    }
    
    func setupComponents() {
        view.addSubview(subImageView)
        view.addSubview(logoImageView)
        view.addSubview(infoLabel)
        view.addSubview(idadeTextField)
        view.addSubview(idadeButton)
        view.addSubview(resultLabel)
        NSLayoutConstraint.activate([
            subImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            subImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 150),
            logoImageView.widthAnchor.constraint(equalToConstant: 160),
            
            infoLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            
            idadeTextField.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 20),
            idadeTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idadeTextField.widthAnchor.constraint(equalToConstant: 150),
            
            idadeButton.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor, constant: 33),
            idadeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idadeButton.widthAnchor.constraint(equalToConstant: 160),
            idadeButton.heightAnchor.constraint(equalToConstant: 35),
            
            resultLabel.topAnchor.constraint(equalTo: idadeButton.bottomAnchor, constant: 20),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        ])
    }

}
