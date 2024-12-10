//
//  TabViewCust03.swift
//  TabViewCustomization
//
//  Created by Weerawut Chaiyasomboon on 10/12/2567 BE.
//

import SwiftUI

struct TabViewCust03: View {
    @State private var selectedTab = 0
    let tabItems = [
        ("Home", "house"),
        ("Search", "magnifyingglass"),
        ("Profile", "person")
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if selectedTab == 0 {
                HomeView()
            } else if selectedTab == 1 {
                SearchView()
            } else {
                ProfileView()
            }
            
            HStack {
                ForEach(0..<tabItems.count, id: \.self) { index in
                    VStack {
                        Image(systemName: tabItems[index].1)
                            .foregroundColor(selectedTab == index ? .blue : .gray)
                        Text(tabItems[index].0)
                            .font(.caption)
                            .foregroundColor(selectedTab == index ? .blue : .gray)
                    }
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        withAnimation{
                            selectedTab = index
                        }
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
    TabViewCust03()
}

struct HomeView: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color.blue
                
                NavigationLink("Show Another Stack View") {
                    Text("This is another view")
                }
                .foregroundStyle(.white)

            }
            .ignoresSafeArea()
            .navigationTitle("Home")
            .sheet(isPresented: $showSheet) {
                Text("This is a Sheet Modal view")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "eye")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

struct SearchView: View {
    var body: some View {
        ZStack{
            Color.green
            
            Text("Search View")
        }
        .ignoresSafeArea()
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color.orange
            
            Text("Profile View")
        }
        .ignoresSafeArea()
    }
}
