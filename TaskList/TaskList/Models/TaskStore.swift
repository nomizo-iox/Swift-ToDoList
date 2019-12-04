//
//  TaskStore.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 11/26/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
//  @Published  var tasks = [
//        "Read Bible",
//         "Pray",
//         "Code" ,
//         "Workout",
//         "Clean Room",
//         "Do Math",
//         "Cook",
//         "Travel To Israel",
//         "Fix Car",
//         "Get New Place"
//        ].map { Task(name: $0) }
    
    @Published var prioritizedTasks = [
        PrioritizedTasks (
            priority: .high,
            names: [
                "Read Bible",
                "Pray",
                "Code" ,
                "Workout"
            ]
        ),
        PrioritizedTasks (
            priority: .medium,
            names: [
                "Clean Room",
                "Do Math",
                "Cook"
            ]
        ),
        PrioritizedTasks (
            priority: .low,
            names: [
                "Travel To Israel",
                "Fix Car"
            ]
        ),
        PrioritizedTasks (
            priority: .no,
            names: [
                 "Get New Place"
            ]
        )
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}

private extension  TaskStore.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init (
            priority: priority,
            tasks: names.map{Task(name: $0)}
        )
    }
}
