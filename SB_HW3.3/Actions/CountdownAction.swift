//
//  CountdownAction.swift
//  SB_HW3.3
//
//  Created by Vladislav Kulak on 27.01.2022.
//

import Foundation
import Combine

class CountdownAction: ObservableObject {
    let objectWillChange = PassthroughSubject<CountdownAction, Never>()
    var counter = 3
    var titleButton = "Start"
    var isDisabled = false
    var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc private func updateCounter() {
        
        if counter > 0  {
            counter -= 1
        } else {
            isDisabled.toggle()
            titleButton = "Reset"
            killTimer()
        }
        objectWillChange.send(self)
    }
    
    private func buttonDidTapped() {
        if titleButton == "Start" {
            titleButton = "Wait..."
            isDisabled.toggle()
        } else {
            titleButton = "Start"
            counter = 3
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
}
