//
//  MainViewController+CollectionView.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import UIKit

extension MainViewController: UICollectionViewDataSource {
    
    // setUpDelegates
    func setUpDelegates() {
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
    }
    
    // registerCell
    func registerCell() {
        mainCollectionView.register(MainCollectionViewCell.self,
                                    forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
    }
    
    // numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    // cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt
                        indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as? MainCollectionViewCell
        else {
            assertionFailure()
            return UICollectionViewCell()
        }
        
        cell.titleLabel.text = "\(indexPath.row + 1)"
        
        return cell
    }
    
    // didSelectItemAt
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailsVC = DetailsViewController()
        self.navigationController?.pushViewController(detailsVC, animated: true)
        navigationItem.title = "Details"
        
        detailsVC.navigationController?.isNavigationBarHidden = false
        detailsVC.title = "Title \(indexPath.row + 1)"
        detailsVC.navigationItem.largeTitleDisplayMode = .always
        detailsVC.navigationController?.navigationBar.prefersLargeTitles = true
        detailsVC.navigationController?.navigationBar.tintColor = .systemTeal
        detailsVC.navigationController?.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.systemTeal]
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    // sizeForItemAt
    func collectionView(_ collectionView: UICollectionView, layout
                        collectionViewLayout: UICollectionViewLayout, sizeForItemAt
                        indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.width/3
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    // minimumLineSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout
                        collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt
                        section: Int) -> CGFloat {
        return .zero
    }
    
    // minimumInteritemSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
}
