//
//  OnboardingModel.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 17.04.2024.
//

import Foundation

struct OnboardingData {
    let onboardingText: String
}

class OnboardingModel {
    func getOnboardingData() -> [OnboardingData] {
        let onboardingData = [
            OnboardingData(onboardingText: "What is Lorem Ipsum? \n\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Lorem Ipsum."),
            OnboardingData(onboardingText: "Where does it come from? \n\n Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,from a Lorem Ipsum passage."),
            OnboardingData(onboardingText: "Lorem Ipsum comes from sections \n\n 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source."),
            OnboardingData(onboardingText: "The standard chunk of Lorem Ipsum \n\n  used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source."),
            OnboardingData(onboardingText: "Lorem Ipsum is not simply random text. \n\n It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words")]
        return onboardingData
    }
}
