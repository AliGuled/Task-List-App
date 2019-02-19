//
//  Task.swift
//  Task List
//
//  Created by Guled Ali on 2/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation
class Task {
    
    //Creating description string and date
    var description: String
    var dateCreated: Date
    //initalizing decription and date
    init(description: String, dateCreated: Date = Date()) {
        self.description = description
        self.dateCreated = dateCreated
        
    }
    
}
