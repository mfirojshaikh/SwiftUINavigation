//
//  NavigationLinkValueDestination.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct NavigationLinkValueDestination: View {
    var body: some View {
        NavigationStack {
            VStack {
                //destination is depend on type of value parameter, if value is 10(Int) then first destination will execute and if value is string then second destination will execute
                NavigationLink("Navigation title", value: 10)
                    .navigationDestination(for: Int.self) { value in
                        AnimalDetails(animalNumber: value)
                    }
                    .navigationDestination(for: String.self) { value in
                        StudentDetails(name: value)
                    }
            }
        }
    }
}

struct NavigationLinkValueDestination_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkValueDestination()
    }
}
