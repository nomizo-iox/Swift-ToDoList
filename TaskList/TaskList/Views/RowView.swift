//
//  RowView.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 12/3/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @ Binding var task: Task
    
    let checkmark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            if task.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant ( Task(name: "To Do")))
    }
}
