//
//  Gift.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import Foundation

struct Gift {
    let id = UUID()
    let name: String
    let description: String
    let url: String
    let price: Double
    let created_at: Date
}
