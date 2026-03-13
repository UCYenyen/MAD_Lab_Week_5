//
//  FeaturedCourseCard.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI

struct FeaturedCourseCard: View {
    var course: Course
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Featured Course")
                .font(.caption)
                .fontWeight(.bold)
            Text(course.name)
                .font(.headline)
            Text(course.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(12)
    }
}
