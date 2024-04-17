//
//  MainCollectionViewCell.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MainCollectionViewCell"
    
    // MARK: - UI
    let backgroundCustomView: UIView = {
        let customView = UIView()
        customView.layer.cornerRadius = 15
        customView.layer.borderColor = UIColor.systemTeal.cgColor
        customView.layer.borderWidth = 1
        return customView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 44, weight: .black)
        label.text = "Step 1"
        label.textColor = .systemTeal
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        
        addSubviews()
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        contentView.addSubview(backgroundCustomView)
        backgroundCustomView.addSubview(titleLabel)
        
    }

    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        [titleLabel, backgroundCustomView].forEach({ $0.translatesAutoresizingMaskIntoConstraints = false })
        
        let backgroundCustomViewConstraints = [
            backgroundCustomView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            backgroundCustomView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
            
        ]
        
        let titleLabelConstraints = [
            titleLabel.centerXAnchor.constraint(equalTo: backgroundCustomView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: backgroundCustomView.centerYAnchor)
        ]
        
        [backgroundCustomViewConstraints, titleLabelConstraints].forEach { NSLayoutConstraint.activate($0) }
    }
}
