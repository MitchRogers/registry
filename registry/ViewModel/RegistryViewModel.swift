//
//  RegistryViewModel.swift
//  registry
//
//  Created by Mitch Rogers on 3/16/23.
//

import Foundation

import Foundation
import PostgresClientKit
import SwiftUI
import UIKit

class RegistryViewModel: ObservableObject {

    func createUser(user: User) {
        let newUser = user
        
        let query = """
                    INSERT INTO public.user (id, first_name, last_name, phone_number, birth_date, created_at)
                    VALUES ('\(newUser.id.uuidString)', '\(newUser.first_name)', '\(newUser.last_name)', '\(newUser.phone_number)', '\(newUser.birth_date)', '\(newUser.created_at)');
                    """
        
        
        db_connection(query: query)
        print("New user \(newUser.first_name) \(newUser.last_name) created.")
    }
    
    func db_connection(query: String) {
        do {
            var configuration = PostgresClientKit.ConnectionConfiguration()
            configuration.host = "mfr-db.c8ccgxm5o5k5.us-east-1.rds.amazonaws.com"
            configuration.database = "mfr-db"
            configuration.user = "mfr_username"
            configuration.credential = .scramSHA256(password: "mfr_password")
            
            let connection = try PostgresClientKit.Connection(configuration: configuration)
            
            let statement = try connection.prepareStatement(text: query)
            defer { statement.close() }
            
            let cursor = try statement.execute(parameterValues: [])
            do { cursor.close() }
        } catch {
            print("error connecting to db: \(error)")
        }
    }
}
