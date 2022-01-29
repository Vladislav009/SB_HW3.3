//
//  ContentView.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 27.01.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var validator: ValidatorTextField
   
    var body: some View {
        Group {
            if userManager.name.isEmpty {
                LoginView()
            } else {
                MainView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
