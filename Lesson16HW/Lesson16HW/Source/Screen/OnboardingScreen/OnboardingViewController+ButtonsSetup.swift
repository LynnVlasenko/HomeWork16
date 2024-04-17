//
//  OnboardingViewController+ButtonsSetup.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import UIKit

extension OnboardingViewController {
    func setupButtons() {
        
        // didTabSignInToGoButtonComplition
        contentView.didTabGoToMainButtonComplition = { [weak self] in
            guard let self = self else { return }
            let mainVC = MainViewController()
            self.navigationController?.pushViewController(mainVC, animated: true)
            navigationController?.isNavigationBarHidden = true
        }
    }
}
