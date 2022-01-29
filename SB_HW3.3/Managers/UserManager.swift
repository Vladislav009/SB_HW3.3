//
//  UserManager.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 29.01.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("username") var name = ""
    
    func logout() {
        self.name = ""
    }
    
    func login(name: String) {
        self.name = name
    }
}
