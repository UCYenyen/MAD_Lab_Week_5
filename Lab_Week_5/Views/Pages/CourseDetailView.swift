//
//  CoursesView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI

struct CourseDetailView: View {
    @EnvironmentObject var viewModel: CampusViewModel
    var course: Course
    
    @State private var showingModal = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(course.name)
                .font(.title2)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(course.status.rawValue)
                .font(.subheadline)
                .bold()
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(course.status.color.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(20)

            VStack(spacing: 8) {
                Image(course.lecturerImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .padding(.top, 10)
                
                Text(course.lecturerName)
                    .font(.headline)
                
                Text("Lecturer")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Text("Credits")
                    .font(.headline)
                Spacer()
                Text("\(course.credits)")
                    .fontWeight(Font.Weight.semibold)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.top, 10)
            
            Button(action: {
                showingModal = true
            }) {
                Text("More Information")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            .padding(.horizontal, 80)
            .padding(.top, 15)
            
            Spacer()
        }
        .navigationTitle("Course Detail")
        .navigationBarTitleDisplayMode(.large)
        .sheet(isPresented: $showingModal) {
            CourseDetailModalView(course: course)
        }
    }
}
