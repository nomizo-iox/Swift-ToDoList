//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 12/3/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
        
    }
}


extension TaskStore.PrioritizedTasks: Identifiable {
    var id: Task.Priority { priority }
    
}
