//
//  Friendship.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import Foundation

struct Friendship {
    let id = UUID()
    let requester_id: String
    let requestee_id: String
    let status: FriendshipStatus
    let request_date: Date
    let reaction_date: Date
    
    enum FriendshipStatus: String, CaseIterable {
        case pending
        case accepted
        case declined
    }
}
