//
//  AboutView.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
                    .padding(.top, 40)
                
                Text("Campus Guide App")
                    .font(.title2)
                    .bold()
                
                Text("Mobile Application Development")
                    .foregroundColor(.secondary)
                
                Text("Bryan Fernando Dinata")
                    .font(.headline)
                
                Text("0706012410005")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("Exercise Week 5 - Navigation Pt.2")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.top, 5)
                
                Text("Built using SwiftUI with MVVM architecture")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}
