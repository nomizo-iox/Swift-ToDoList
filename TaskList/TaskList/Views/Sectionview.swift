//
//  Sectionview.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 12/3/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import SwiftUI

struct Sectionview: View {
    @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
    
    var body: some View {
        Section(
            header: Text (
                "\(prioritizedTasks.priority.rawValue.capitalized) Priority"
        )
    ) {
         ForEach(prioritizedTasks.tasks) { index in
           RowView(task: self.$prioritizedTasks.tasks[index])
         }
           // Reorder Rows
       .onMove { sourceIndices, destinationIndex in
           self.prioritizedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
         }
           // Swipping Right to Left to Delete
       .onDelete { indexSet in
           self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
           
            }
        }
    
    }

}
