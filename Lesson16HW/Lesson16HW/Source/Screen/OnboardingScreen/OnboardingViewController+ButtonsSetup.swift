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
            let mainTabbarVC = MainViewController()
            self.navigationController?.pushViewController(mainTabbarVC, animated: true)
            navigationController?.isNavigationBarHidden = true
        }
    }
}
