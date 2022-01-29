//
//  ValidatorTextField.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 29.01.2022.
//

import Foundation

class ValidatorTextField: ObservableObject {
    @Published var isNotValid = true
    
    // Чтобы не обидеть людей с именем Ян
    let allowedCountSymbol = 2
    
    func checkField(text: String) {
        if text.count < allowedCountSymbol {
            isNotValid = true
        } else {
            isNotValid = false
        }
    }
}
