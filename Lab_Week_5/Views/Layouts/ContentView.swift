//
//  ContentView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CampusViewModel()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            FacilitiesView()
                .tabItem {
                    Label("Facilities", systemImage: "building.2.fill")
                }
            
            CoursesView()
                .tabItem {
                    Label("Courses", systemImage: "book.fill")
                }
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    ContentView()
}
