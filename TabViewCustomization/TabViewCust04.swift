//
//  TabViewCust04.swift
//  TabViewCustomization
//
//  Created by Weerawut Chaiyasomboon on 10/12/2567 BE.
//

import SwiftUI

struct TabViewCust04: View {
    @State private var selectedTab = 0 // Tracks the selected tab
    
    var body: some View {
        ZStack(alignment: .top) {
            // Content view with custom animations
                if selectedTab == 0 {
                    HomeView()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .transition(.scale) // Add a slide transition
                        .animation(.easeInOut, value: selectedTab)
                } else if selectedTab == 1 {
                    SearchView()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .transition(.scale) // Add a slide transition
                        .animation(.easeInOut, value: selectedTab)
                } else if selectedTab == 2 {
                    ProfileView()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .transition(.scale) // Add a slide transition
                        .animation(.easeInOut, value: selectedTab)
                }
            // Custom Tab Bar
            HStack {
                TabItemView(icon: "house.fill", title: "Home", isSelected: selectedTab == 0)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = 0
                        }
                    }
                TabItemView(icon: "magnifyingglass", title: "Search", isSelected: selectedTab == 1)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = 1
                        }
                    }
                TabItemView(icon: "person.fill", title: "Profile", isSelected: selectedTab == 2)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = 2
                        }
                    }
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(radius: 5)
            .padding(.horizontal)
        }
    }
}

#Preview {
    TabViewCust04()
}

struct TabItemView: View {
    let icon: String
    let title: String
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .foregroundColor(isSelected ? .blue : .gray)
                .scaleEffect(isSelected ? 1.2 : 1.0) // Add scale effect for selected tab
            Text(title)
                .font(.caption)
                .foregroundColor(isSelected ? .blue : .gray)
        }
        .frame(maxWidth: .infinity)
    }
}
