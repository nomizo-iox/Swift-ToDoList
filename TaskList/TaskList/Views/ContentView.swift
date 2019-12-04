//
//  ContentView.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 11/26/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore
    @State var modalPresented = false

    var body: some View {
        NavigationView {
            List {
                ForEach(taskStore.tasks) { index in
                    RowView(task: self.$taskStore.tasks[index])
                }
                    // Reorder Rows
                .onMove { sourceIndices, destinationIndex in
                    self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                    // Swipping Right to Left to Delete
                .onDelete { indexSet in
                    self.taskStore.tasks.remove(atOffsets: indexSet)
                    
                }
            }
    
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
            Button(action: {
                self.modalPresented = true
            }) {
                Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modalPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}


