//
//  TaskList.swift
//  Task List
//
//  Created by Guled Ali on 2/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation
class TaskList {
    //Creating the modle
    var tasks = [Task]()
    
    //Adding tasks to the list
    func add(_ task: Task) -> Int {
        tasks.append(task)
        return tasks.endIndex-1
    }
    //getting tasks
    func getTask(at index : Int) -> Task? {
        
        if tasks.indices.contains(index) {
            return tasks[index]

        }
        return nil
    }
    
    //Counting the tasks
    func count() -> Int {
        return tasks.count
        
    }
    
}

