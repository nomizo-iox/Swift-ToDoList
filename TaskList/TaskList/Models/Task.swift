//
//  Task.swift
//  TaskList
//
//  Created by Samuel F. Ademola on 11/26/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//
import Foundation

struct Task: Identifiable {
    let id = UUID()

    var name: String
    var completed = false
}
