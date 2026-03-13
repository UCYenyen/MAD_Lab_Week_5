//
//  CourseStatus.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import Foundation
import SwiftUI

enum CourseStatus: String, CaseIterable {
    case upcoming = "Upcoming"
    case inProgress = "In Progress"
    case completed = "Completed"
    
    var color: Color {
        switch self {
        case .upcoming: return .blue
        case .inProgress: return .orange
        case .completed: return .green
        }
    }
}

struct Course: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let lecturerName: String
    let lecturerImage: String
    let credits: Int
    var status: CourseStatus
}
