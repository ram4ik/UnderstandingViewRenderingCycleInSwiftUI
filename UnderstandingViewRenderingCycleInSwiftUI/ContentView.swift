//
//  ContentView.swift
//  UnderstandingViewRenderingCycleInSwiftUI
//
//  Created by Ramill Ibragimov on 26.09.2020.
//

import SwiftUI

struct ContentView: View {
    
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
