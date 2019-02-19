//
//  TaskTableViewController.swift
//  Task List
//
//  Created by Guled Ali on 2/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    //Accessing the modle
    var taskModle : TaskList!
   
   //Adding a task with alert controller
    @IBAction func addNewTask(_ sender: UIButton) {
        let inputAlert = UIAlertController(title: "Enter task", message: "Describe what you need to to", preferredStyle: .alert)
        inputAlert.addTextField(configurationHandler: nil)
        inputAlert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (action) in
            if let description = inputAlert.textFields?[0].text  {
                if description.count < 1 {
                    print("You must add a text")
                } else {
                    let task = Task(description: description)
                    let index = self.taskModle.add(task)
                    let indexPath = IndexPath(row: index, section: 0)
                    self.tableView.insertRows(at: [indexPath], with: .automatic)
                }
                
            }
        }
        ))
        inputAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(inputAlert, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return taskModle.count()
    }
    
    //updating the cell with date and string
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = taskModle.getTask(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = task?.description
      
        let dateString = Formatting.dateFormatter.string(from: (task?.dateCreated)!)
    
        cell.detailTextLabel?.text = "Created at \(dateString)"
        return cell
    }
    
    //seguing to detail view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let detailViewControll = segue.destination as! DetailViewController
            let rowSelected = tableView.indexPathsForSelectedRows
            let firstRow = rowSelected?[0]
            let task = taskModle.getTask(at: (firstRow?.row)!)
            detailViewControll.task = task
        }
    }
    
}
