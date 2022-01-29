//
//  LoginView.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 28.01.2022.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var validator: ValidatorTextField
    @State private var text = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name!", text: $text)
                    .multilineTextAlignment(.center)
                    .onChange(of: text) { _ in
                        validator.checkField(text: text)
                    }
                
                Text("\(text.count)")
                    .foregroundColor(validator.isNotValid ? .red : .green)
                    .font(.title3)
            }
            .padding(.bottom, 25)
           
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(validator.isNotValid ? .gray : .blue)
                Button(action: {userManager.login(name: text)}) {
                    Text("OK")
                }
            }
            .disabled(validator.isNotValid)
            
        }
        .padding()
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(ValidatorTextField())
    }
}
