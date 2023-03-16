//
//  User.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import Foundation

struct User {
    let id = UUID()
    let first_name: String
    let last_name: String
//    let credentials: Credentials
    var phone_number: String
    var birth_date: Date
//    var gift_list: GiftList?
//    var friendships: [String]?
    let created_at: Date
}
