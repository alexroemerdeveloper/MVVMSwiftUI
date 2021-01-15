//
//  Clock.swift
//  MVVMSwiftUI
//
//  Created by Alexander Römer on 15.01.21.
//

import Foundation
import Combine

class Clock: ClockProtocol {
    
    var clock: AnyPublisher<Date, ClockError> {
        return clockMulticaster.eraseToAnyPublisher()
    }
    
    private let clockMulticaster = PassthroughSubject<Date, ClockError>()
    private var timerSubscription: Cancellable?
    
    func startClock() {
        timerSubscription = Timer.publish(every: 1.0, on: .main, in: .default)
            .autoconnect()
            .setFailureType(to: ClockError.self)
            .multicast(subject: clockMulticaster)
            .connect()
    }
    
    func stopClock() {
        timerSubscription?.cancel()
    }
}
