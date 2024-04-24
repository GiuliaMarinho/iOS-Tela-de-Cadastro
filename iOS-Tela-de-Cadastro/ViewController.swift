//
//  ViewController.swift
//  iOS-Tela-de-Cadastro
//
//  Created by Giulia Marinho on 21/04/24.
//UIIMAGE VIEW
//DOIS UITEXT FIELD
// UIBURTTON
// DUAS UI LABEL

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.layer.borderWidth = 1
        
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.layer.borderWidth = 1
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            textField1.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            textField1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            textField1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField1.topAnchor.constraint(equalTo: imageView.bottomAnchor,constant: 20),
            
            textField2.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            textField2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField2.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 10),
            
            button.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            button.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 30),
            
            label1.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            label1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 30),
            
            label2.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            label2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            label2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
        ])
    }
    
    @IBAction func button(_ sender: Any) {
        guard let text1 = textField1.text,
              let text2 = textField2.text else { return }
        
        label1.text = "E-mail Digitado: \(text1)"
        label2.text = "Senha Digitada: \(text2)"
    }
}
