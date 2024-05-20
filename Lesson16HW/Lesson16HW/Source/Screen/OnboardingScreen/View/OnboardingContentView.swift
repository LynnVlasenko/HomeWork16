//
//  OnboardingContentView.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import UIKit

class OnboardingContentView: UIView {
    
    var model = [OnboardingData]()
    
    var didTabGoToMainButtonComplition: (() -> ())?
    
    // MARK: - UI
    var onboardingCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    var onboardingPageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .systemBlue.withAlphaComponent(0.5)
        return pageControl
    }()
    
    lazy var goToMainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.isHidden = true
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabGoToMainButton), for: .touchUpInside)
        return button
    }()
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        getData()
        
        addSubviews()
        applyConstraints()
        setUpDelegates()
        registerCell()
        setupPageControl()
    }
    
    required init? (coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        [onboardingCollectionView, onboardingPageControl, goToMainButton]
            .forEach { addSubview($0) }
    }
    
    // MARK: - Get Data
    private func getData() {
        model = OnboardingModel().getOnboardingData()
    }
    
    // MARK: - Setup Page Control
    private func setupPageControl() {
        onboardingPageControl.numberOfPages = model.count
    }
    
    // MARK: - Actions
    @objc private func didTabGoToMainButton() {
        print("didTabToGoButton")
        didTabGoToMainButtonComplition?()
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        [onboardingCollectionView, onboardingPageControl, goToMainButton]
            .forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        let onboardingCollectionViewConstraints = [
            onboardingCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            onboardingCollectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            onboardingCollectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7),
            onboardingCollectionView.widthAnchor.constraint(equalTo: widthAnchor)
        ]
        
        let onboardingPageControlConstraints = [
            onboardingPageControl.topAnchor.constraint(equalTo: onboardingCollectionView.bottomAnchor, constant: 20),
            onboardingPageControl.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
        
        let goToMainButtonConstraints = [
            goToMainButton.topAnchor.constraint(equalTo: onboardingPageControl.bottomAnchor, constant: 20),
            goToMainButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            goToMainButton.heightAnchor.constraint(equalToConstant: 44),
            goToMainButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
        ]
        
        [onboardingCollectionViewConstraints, onboardingPageControlConstraints, goToMainButtonConstraints]
            .forEach { NSLayoutConstraint.activate($0) }
    }
}
