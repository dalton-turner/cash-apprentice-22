//
//  PresentViewController.swift
//  NavigationControllerDemo
//
//  Created by Dalton Turner on 7/6/22.
//

import Foundation
import UIKit

class PresentViewController: UIViewController {
    
    let stackView = UIStackView()
    let dismissButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension PresentViewController {
    func style() {
        view.backgroundColor = .systemBackground
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.setTitle("Dismiss", for: [])
        dismissButton.configuration = .filled()
        dismissButton.addTarget(self, action: #selector(dismissTapped), for: .touchUpInside)
    }
    
    func layout() {
        stackView.addArrangedSubview(dismissButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

extension PresentViewController {
    @objc func dismissTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
