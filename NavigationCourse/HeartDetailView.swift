//
//  HeartDetailView.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct HeartDetailView: View {
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .resizable()
                .font(.title)
                .foregroundColor(.red)
                .frame(width: 230, height: 200)
                .scaledToFit()
                .shadow(radius: 20)
            Text("My Heart")
                .foregroundColor(.white)
                .font(.title)
        }
        .lineSpacing(20)
    }
}

struct HeartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeartDetailView()
    }
}
