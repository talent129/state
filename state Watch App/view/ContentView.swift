//
//  ContentView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                StateView()
            }
            NavigationStack {
                BindingView()
            }
            NavigationStack {
                ObservedObjectView()
            }
            NavigationStack {
                EnvironmentObjectView()
            }
            NavigationStack {
                StateObjectView()
            }
            NavigationStack {
                OtherView()
            }
            NavigationStack {
                OtherView2()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
