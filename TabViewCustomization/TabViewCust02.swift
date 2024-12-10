//
//  TabViewCust02.swift
//  TabViewCustomization
//
//  Created by Weerawut Chaiyasomboon on 10/12/2567 BE.
//

import SwiftUI

struct TabViewCust02: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            TabView {
                Text("Home View")
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                
                Text("List View")
                    .tabItem {
                        Label("List", systemImage: "list.bullet.rectangle")
                    }
                
                Text("Profile View")
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            .background(Color.clear)
            .tint(.black)
            
            // Custom background
            if horizontalSizeClass == .compact {
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(height: 100) // Adjust height
                        .foregroundColor(.blue.opacity(0.2))
                        .allowsHitTesting(false) // Ignore touch interactions
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TabViewCust02()
}
