//
//  CampusViewModel.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import Foundation
import SwiftUI
import Combine

class CampusViewModel: ObservableObject {
    @Published var facilities: [Facility] = [
        Facility(name: "Library", imageName: "building.2.fill", description: "Quiet study space with books and journals.", location: "Old Building, Floor 2", imageSrc:"uc-library"),
        Facility(name: "Computer Lab", imageName: "building.2.fill", description: "Fully equipped computer lab for practical work.", location: "Old Building, Floor 3",imageSrc:"uc-computer-lab"),
        Facility(name: "SIFT", imageName: "building.2.fill", description: "System and IT infrastructure facility.", location: "FAS Building, Floor 3",imageSrc:"uc-sift")
    ]
    
    @Published var courses: [Course] = [
        Course(name: "Mobile Application Development", description: "Learn to build iOS applications using Swift and SwiftUI.", lecturerName: "Bu There", lecturerImage: "Bu There", credits: 3, status: .inProgress),
        Course(name: "Statistics", description: "Introduction to probability and statistics.", lecturerName: "Pak Christo", lecturerImage: "Pak Christo", credits: 3, status: .completed),
        Course(name: "Visual Programming", description: "Learn desktop app development.", lecturerName: "Pak Evan", lecturerImage: "Pak Evan", credits: 3, status: .upcoming)
    ]
    
    func updateCourseStatus(courseId: UUID, newStatus: CourseStatus) {
        if let index = courses.firstIndex(where: { $0.id == courseId }) {
            courses[index].status = newStatus
        }
    }
}
