//
//  ColorButtonView.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 29.01.2022.
//

import SwiftUI

struct ColorButtonView: View {
    let action: () -> Void
    let title: String
    let color: Color
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 150)
                .font(.title)
                .padding()
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
                )
        }
    }
}

struct ColorButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonView(action: {}, title: "Test", color: .red)
    }
}
