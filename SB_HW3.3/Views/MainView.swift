//
//  MainView.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 27.01.2022.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var validator: ValidatorTextField
    @StateObject private var countdown = CountdownAction()
    
    var body: some View {
        VStack(spacing: 180){
            Text("Hi, \(userManager.name)")
            Text("\(countdown.counter)")
                .font(.title)
                .fontWeight(.bold)
            
            ColorButtonView(
                action: countdown.startTimer,
                title: "\(countdown.titleButton)",
                color: .red
            )
                .opacity(countdown.isDisabled ? 0.5 : 1)
                .disabled(countdown.isDisabled)
            
            ColorButtonView(
                action: userManager.logout,
                title: "Logout",
                color: .blue
            )
                .onAppear(perform: {validator.isNotValid = true})
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(UserManager())
            .environmentObject(ValidatorTextField())
    }
}
