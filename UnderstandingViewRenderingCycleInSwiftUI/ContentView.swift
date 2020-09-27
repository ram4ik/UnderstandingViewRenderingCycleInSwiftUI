//
//  ContentView.swift
//  UnderstandingViewRenderingCycleInSwiftUI
//
//  Created by Ramill Ibragimov on 26.09.2020.
//

import SwiftUI

struct ContentViewModel: Equatable {
    var name: String = ""
    var age: Int = 0
}

struct ContentView: View {
    
    @State private var vm = ContentViewModel()
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            //Text("\(counter)")
            Text("")
            Button(action: {
                counter += 1
            }, label: {
                Text("Increment")
            })
        }
        .onChange(of: vm, perform: { value in
            print(value)
            vm.age = 42
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
