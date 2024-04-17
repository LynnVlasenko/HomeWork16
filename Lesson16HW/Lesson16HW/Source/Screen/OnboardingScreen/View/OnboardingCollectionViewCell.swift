//
//  OnboardingCollectionViewCell.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 15.04.2024.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "OnboardingCollectionViewCell"
    
    // MARK: - UI
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 44, weight: .black)
        label.text = "Step 1"
        label.textColor = .systemTeal
        return label
    }()
    
    let onboardingTextView: UITextView = {
        let textView = UITextView()
        textView.text = ""
        textView.font = .systemFont(ofSize: 17, weight: .medium)
        textView.textAlignment = .justified
        textView.isEditable = false
        textView.isScrollEnabled = true
        textView.contentInset = UIEdgeInsets(top: 20, left: 16, bottom: 16, right: 16)
        return textView
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Add Subviews
    private func addSubviews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(onboardingTextView)
    }

    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        [titleLabel, onboardingTextView].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let onboardingTextViewConstraints = [
            onboardingTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            onboardingTextView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            onboardingTextView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
            onboardingTextView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.9)
        ]
        
        [titleLabelConstraints, onboardingTextViewConstraints].forEach { NSLayoutConstraint.activate($0) }
    }
}

// MARK: - Configure with model
extension OnboardingCollectionViewCell {
    
    func configure(with model: OnboardingData) {
        onboardingTextView.text = model.onboardingText
    }
}
