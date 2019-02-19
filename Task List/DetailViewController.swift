//
//  DetailViewController.swift
//  Task List
//
//  Created by Guled Ali on 2/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import UIKit
class DetailViewController: UIViewController {
    
    //Accessing the task class
    var task: Task!
    
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var taskDateCreated: UILabel!
    
    //Updating the UI
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let dateString = Formatting.dateFormatter.string(from: task.dateCreated)
        taskDescription.text = task.description
        taskDateCreated.text = "\(dateString)"
        
    }
    
    //dismissing the detailview controller
    @IBAction func back(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
