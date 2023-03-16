//
//  LoginView.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: RegistryViewModel
    var someDateTime: Date?
    
    var body: some View {
        VStack {
            Text("log in")
            
            Button {
                viewModel.createUser(user: User(first_name: "mitch", last_name: "rogers", phone_number: "8889990000", birth_date: Date(), created_at: Date()))
            } label: {
                Text("create user")
            }
        }
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
