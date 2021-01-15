//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by Alexander Römer on 15.01.21.
//

import SwiftUI

struct ContentView<Model: ViewModelProtocol>: View {
    
    @EnvironmentObject var viewModel: Model
    
    var body: some View {
        VStack(spacing: 8) {
            Toggle(isOn: $viewModel.isCounterStarted) {
                Text("Start timer")
            }
            Text("Value: \(viewModel.value)")
                .accessibility(identifier: "counter_value")
            Button(action: viewModel.reset) {
                Text("Reset")
            }
        }
        .padding(24)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView<FakeViewModel>().environmentObject(FakeViewModel(value: 123, isCounterStarted: true))
                .previewDisplayName("ON 123")
            ContentView<FakeViewModel>().environmentObject(FakeViewModel(value: 456, isCounterStarted: false))
                .previewDisplayName("OFF 456")
        }
    }
}
