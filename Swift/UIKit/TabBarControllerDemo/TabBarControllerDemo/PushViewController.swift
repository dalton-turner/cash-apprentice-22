//
//  PushViewController.swift
//  TabBarControllerDemo
//
//  Created by Dalton Turner on 7/6/22.
//

import Foundation
import UIKit

class PushViewController: UIViewController {
    
    let stackView = UIStackView()
    let popButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension PushViewController {
    func style() {
        title = "Pushed ViewController"
        view.backgroundColor = .systemBackground
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        popButton.translatesAutoresizingMaskIntoConstraints = false
        popButton.setTitle("Dismiss", for: [])
        popButton.configuration = .filled()
        popButton.addTarget(self, action: #selector(popTapped), for: .touchUpInside)
    }
    
    func layout() {
        stackView.addArrangedSubview(popButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

extension PushViewController {
    @objc func popTapped(sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
