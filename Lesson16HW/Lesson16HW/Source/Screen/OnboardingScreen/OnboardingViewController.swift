//
//  OnboardingViewController.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 15.04.2024.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let contentView = OnboardingContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupButtons()
        // setup UI Elements
        addSubviews()
        applyConstraints()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        view.addSubview(contentView)
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let contentViewConstraints = [
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ]
        
        NSLayoutConstraint.activate(contentViewConstraints)
    }
}
