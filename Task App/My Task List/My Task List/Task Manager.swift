//
//  Task Manager.swift
//  My Task List
//
//  Created by Ryan Rudzitis on 2015-05-05.
//  Copyright (c) 2015 Ryan Rudzitis. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task]() // array for my current task
    var allTasks = [task]() // array for all tasks that have been added
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
        allTasks.append(task(name: name, desc: desc))
    }
}
