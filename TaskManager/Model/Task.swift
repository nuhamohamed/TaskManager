//
//  Task.swift
//  TaskManager
//
//  Created by Nuha Mohamed on 8/3/23.
//

import SwiftUI

extension Color {
    static let taskColor1 = Color("TaskColor1") // Replace "TaskColor1" with the actual name in your asset catalog.
}


struct Task: Identifiable {
    var id: UUID = .init()
    var taskTitle: String
    var creationDate: Date = .init()
    var isCompleted: Bool = false
    var tint: Color
}


var sampleTasks: [Task] = [
    Task(taskTitle: "Finish MVP", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1),
    Task(taskTitle: "Code more!", creationDate: .updateHour(4), isCompleted: true, tint: .taskColor1)          ]

extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: Date()) ?? Date()
    }
}
