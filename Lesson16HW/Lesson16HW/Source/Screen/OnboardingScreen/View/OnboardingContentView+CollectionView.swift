//
//  OnboardingContentView+CollectionView.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import UIKit

// MARK: - UICollectionViewDataSource
extension OnboardingContentView: UICollectionViewDataSource {
    
    // setUpDelegates
    func setUpDelegates() {
        onboardingCollectionView.dataSource = self
        onboardingCollectionView.delegate = self
    }
    
    // registerCell
    func registerCell() {
        onboardingCollectionView.register(OnboardingCollectionViewCell.self,
                                          forCellWithReuseIdentifier: OnboardingCollectionViewCell.identifier)
    }
    
    // numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    // cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt
                        indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as? OnboardingCollectionViewCell
        else {
            assertionFailure()
            return UICollectionViewCell()
        }
        
        cell.titleLabel.text = "Step \(indexPath.row + 1)"
        
        let item = model[indexPath.row]
        cell.configure(with: item)
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension OnboardingContentView: UICollectionViewDelegate {
    
    // willDisplay
    func collectionView(_ collectionView: UICollectionView, willDisplay
                        cell: UICollectionViewCell, forItemAt
                        indexPath: IndexPath) {
        
        onboardingPageControl.currentPage = indexPath.row
        
        if indexPath.row == 4 {
            goToMainButton.isHidden = false
        } else {
            goToMainButton.isHidden = true
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension OnboardingContentView: UICollectionViewDelegateFlowLayout {
    
    // sizeForItemAt
    func collectionView(_ collectionView: UICollectionView, layout
                        collectionViewLayout: UICollectionViewLayout, sizeForItemAt
                        indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.width
        let cellHeight = collectionView.bounds.height
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    // minimumLineSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout
                        collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt
                        section: Int) -> CGFloat {
        return .zero
    }
}

