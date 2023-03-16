//
//  Credentials.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import Foundation

struct Credentials {
    let id = UUID()
    let email: String
    let password: String
    var security_question: SecurityQuestion?
    var security_answer: String?
    let created_at: Date
    
    enum SecurityQuestion: String, CaseIterable {
        case favoritePet
        case momsName
        case firstSchool
    }
}
