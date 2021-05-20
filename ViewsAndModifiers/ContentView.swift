//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by David Bailey on 19/05/2021.
//

import SwiftUI

struct TitleFont: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.blue)
    }
}

extension View {
    func titleFont() -> some View {
        self.modifier(TitleFont())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Button("Print type") {
                print(type(of: self.body))
            }
        }
        .titleFont()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
