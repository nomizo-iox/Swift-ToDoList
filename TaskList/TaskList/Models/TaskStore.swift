//
//  TaskStore.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 11/26/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
  @Published  var tasks = [
        "Read Bible",
         "Pray",
         "Code" ,
         "Workout",
         "Clean Room",
         "Do Math",
         "Cook",
         "Travel To Israel",
         "Fix Car",
         "Get New Place"
        ].map { Task(name: $0) }
}
