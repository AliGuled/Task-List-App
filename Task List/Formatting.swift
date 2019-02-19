//
//  Formatting.swift
//  Task List
//
//  Created by Guled Ali on 2/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation
class Formatting {
    
    //Creating date formatter
    static let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .short
        df.timeStyle = .short
        return df
        
    }()
    
    
}
