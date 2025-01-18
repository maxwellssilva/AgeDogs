//
//  ViewController.swift
//  AgeDogs
//
//  Created by Maxwell da Silva e Silva on 16/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.borderStyle = .roundedRect
        email.placeholder = "Digite seu email"
        email.keyboardType = .emailAddress
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    
    private var senhaLabel: UILabel = {
        let senha = UILabel()
        senha.text = "Senha"
        senha.font = .boldSystemFont(ofSize: 18)
        senha.translatesAutoresizingMaskIntoConstraints = false
        return senha
    }()
    
    private lazy var senhaTextField: UITextField = {
        let senha = UITextField()
        senha.borderStyle = .roundedRect
        senha.placeholder = "Digite sua senha"
        senha.translatesAutoresizingMaskIntoConstraints = false
        return senha
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupComponents()
    }
    
    func setupComponents() {
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(senhaLabel)
        view.addSubview(senhaTextField)
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            senhaLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            senhaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            senhaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            senhaTextField.topAnchor.constraint(equalTo: senhaLabel.bottomAnchor, constant: 10),
            senhaTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            senhaTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}
