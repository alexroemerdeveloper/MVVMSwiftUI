//
//  ClockProtocol.swift
//  MVVMSwiftUI
//
//  Created by Alexander Römer on 15.01.21.
//

import Foundation
import Combine

protocol ClockProtocol {
    var clock: AnyPublisher<Date, ClockError> { get }
    func startClock()
    func stopClock()
}
