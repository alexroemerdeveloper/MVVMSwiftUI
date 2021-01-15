//
//  CounterProtocol.swift
//  MVVMSwiftUI
//
//  Created by Alexander Römer on 15.01.21.
//

import Foundation
import Combine

protocol CounterProtocol {
    var counter: AnyPublisher<Int, Never> { get }
    var isCounterStarted: Bool { get set }
    func resetCounter()
}

