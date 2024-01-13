//
//  NavigationStackPath.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct NavigationStackPathDetails: View {
    @Binding var navigationArray: [Int]
    var body: some View {
        VStack {
            Button("Back") {
                navigationArray.removeLast()
            }
        }
    }
}

struct NavigationStackPath: View {
    @State var destinationArray: [Int] = []
    //Note - when user navigate back then element from the array is also get removed or if you want to write code for navigate back then you can remove element from this array from destination screen
    var body: some View {
        NavigationStack(path: $destinationArray) {
            VStack {
                Button("Append new destination in stack/array") {
                    destinationArray.append(15)
                    destinationArray.append(5)
                }
            }
            .navigationDestination(for: Int.self) { value in
                NavigationStackPathDetails(navigationArray: self.$destinationArray)
            }
        }
    }
}

struct NavigationStackPath_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackPath()
    }
}
