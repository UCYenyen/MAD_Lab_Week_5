//
//  FacilityDetailView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI

struct FacilityDetailView: View {
    var facility: Facility
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(facility.imageSrc)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(12)
            
            Text(facility.name)
                .font(.largeTitle)
                .bold()
            
            Text("Location: \(facility.location)")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .fontWeight(.bold)
            Divider()
            
            Text(facility.description)
                .font(.body)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Facility Detail")
    }
}
