//
//  ViewModelProtocol.swift
//  MVVMSwiftUI
//
//  Created by Alexander Römer on 15.01.21.
//

import Foundation

protocol ViewModelProtocol: ObservableObject {
    var value: Int             { get set }
    var isCounterStarted: Bool { get set }
    func reset()
}
