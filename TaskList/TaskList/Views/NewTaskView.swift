//
//  NewTaskView.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 11/26/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    @State var text = ""
    
    var body: some View {
        TextField("Task Name", text: $text)
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
