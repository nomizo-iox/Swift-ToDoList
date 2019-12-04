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
                ForEach(taskStore.prioritizedTasks) { index in
                    Sectionview(prioritizedTasks: self.$taskStore.prioritizedTasks[index])
                    
                }
            }
        .listStyle(GroupedListStyle())
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


