//
//  registryApp.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import SwiftUI

@main
struct registryApp: App {
    @StateObject var viewModel = RegistryViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
