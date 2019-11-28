//
//  ContentView.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 11/26/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore: TaskStore
    @State var modalPresented = false

    var body: some View {
        NavigationView {
            List(taskStore.tasks) { task in
                Text(task.name)
            }
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            trailing:
            Button(action: {
                self.modalPresented = true
            }) {
                Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modalPresented) {
            NewTaskView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
