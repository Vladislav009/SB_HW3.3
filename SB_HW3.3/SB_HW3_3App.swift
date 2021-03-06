//
//  SB_HW3_3App.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 27.01.2022.
//

import SwiftUI

@main
struct SB_HW3_3App: App {
    @StateObject private var userManager = UserManager()
    @StateObject private var validator = ValidatorTextField()
        
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userManager)
                .environmentObject(validator)
        }
    }
}
