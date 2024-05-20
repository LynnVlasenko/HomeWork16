//
//  MainViewController.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - UI
    var mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    // MARK: - Override
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        addSubviews()
        applyConstraints()
        setUpDelegates()
        registerCell()
    }
    
    // viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        view.addSubview(mainCollectionView)
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        let mainCollectionViewConstraints = [
            mainCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainCollectionView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
            mainCollectionView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(mainCollectionViewConstraints)
    }
}
