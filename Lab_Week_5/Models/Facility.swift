//
//  Facility.swift
//  Lab_Week_5
//
//  Created by Bryan Fernando Dinata on 13/03/26.
//


import Foundation

struct Facility: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let location: String
    let imageSrc: String
}
