//
//  FacilitiesView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI

struct FacilitiesView: View {
    @EnvironmentObject var viewModel: CampusViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.facilities) { facility in
                NavigationLink(destination: FacilityDetailView(facility: facility)) {
                    HStack {
                        Image(systemName: facility.imageName)
                            .foregroundColor(.blue)
                            .frame(width: 30)
                        VStack(alignment: .leading) {
                            Text(facility.name)
                                .font(.headline)
                            Text(facility.location)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Facilities")
        }
    }
}
