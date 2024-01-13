//
//  SimpleNavigation.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct SimpleNavigation: View {
    var body: some View {
        NavigationStack {
            VStack {
                //MARK: - NavigationLink with title and destination
                NavigationLink("Navigation link >") {
                    DetailView()
                }
                .padding()
                //MARK: - NavigationLink with destination and title
                NavigationLink {
                    HeartDetailView()
                } label: {
                    Image(systemName: "heart")
                }
            }
        }
    }
}

struct SimpleNavigation_Previews: PreviewProvider {
    static var previews: some View {
        SimpleNavigation()
    }
}
