//
//  CourseDetailModalView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//

import SwiftUI

struct CourseDetailModalView: View {
    @EnvironmentObject var viewModel: CampusViewModel
    var course: Course
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 20) {
            Text(course.name)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text(course.description)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text("Current Status: \(course.status.rawValue)")
                .font(.headline)
                .padding(.top)
            
            Divider()
            
            VStack(spacing: 15) {
                Text("Update Status")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Button("Mark as In Progress") {
                    viewModel.updateCourseStatus(courseId: course.id, newStatus: .inProgress)
                }
                
                Button("Mark as Completed") {
                    viewModel.updateCourseStatus(courseId: course.id, newStatus: .completed)
                }
                
                Button("Mark as Upcoming") {
                    viewModel.updateCourseStatus(courseId: course.id, newStatus: .upcoming)
                }
            }
            .padding(.top)
            
            Divider()
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding(.bottom)
            
            Spacer()
        }
        .padding()
    }
}
