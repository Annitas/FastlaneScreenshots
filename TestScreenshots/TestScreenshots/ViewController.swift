//
//  ViewController.swift
//  TestScreenshots
//
//  Created by Anita Stashevskaya on 01.08.2024.
//

import UIKit

class ViewController: UIViewController {
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap Me", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemMint
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc func buttonTapped() {
        present(SecondViewController(), animated: true)
    }
}

