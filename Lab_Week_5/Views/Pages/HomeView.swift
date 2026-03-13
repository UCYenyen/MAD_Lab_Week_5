//
//  HomeView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI
struct HomeView: View {
    @EnvironmentObject var viewModel: CampusViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Campus Guide")
                    .frame(maxWidth: .infinity)
                    .font(Font.largeTitle.bold())
                    .padding(.horizontal)
                Text("Explore facilities and track your courses.")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                
                HStack(spacing: 15) {
                    StatCardView(title: "Courses", count: viewModel.courses.count, icon: "book.fill", color: .blue)
                    StatCardView(title: "Facilities", count: viewModel.facilities.count, icon: "building.2.fill", color: .green)
                }
                .padding(.horizontal)
                
                if let featured = viewModel.courses.first {
                    FeaturedCourseCard(course: featured)
                        .padding(.horizontal)
                }
                
                Spacer()
            }
            .navigationTitle("Home")
        }
    }
}
