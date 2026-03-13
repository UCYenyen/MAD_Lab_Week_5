//
//  CoursesView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI

struct CoursesView: View {
    @EnvironmentObject var viewModel: CampusViewModel
        
        var body: some View {
            NavigationView {
                List(viewModel.courses) { course in
                    // Menggunakan NavigationLink untuk pindah ke CourseDetailView
                    NavigationLink(destination: CourseDetailView(course: course)) {
                        HStack {
                            Image(course.lecturerImage)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(course.name)
                                    .font(.headline)
                                Text(course.lecturerName)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            Text(course.status.rawValue)
                                .font(.caption)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(course.status.color.opacity(0.2))
                                .foregroundColor(course.status.color)
                                .cornerRadius(8)
                        }
                    }
                }
                .navigationTitle("Courses")
            }
    }
}
