//
//  ContentView.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Section(content: {
                NavigationLink("Navigation with title and destination") {
                    SimpleNavigation()
                }
            }, header: {
                Text("Header text")
                    .background(.gray)
            })
            .padding()
            Section("Advance Navigation") {
                NavigationLink("Navigation with link value and destination") {
                    NavigationLinkValueDestination()
                }
            }
            .padding()
            Section("Navigation for list and value for destination") {
                NavigationLink("Customer List Example") {
                    CustomerList()
                }
            }
            .padding()
            Section("NavigationPath with Enum") {
                NavigationLink("NavigationPath with Enum") {
                    EnumRoutingHomeView()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
