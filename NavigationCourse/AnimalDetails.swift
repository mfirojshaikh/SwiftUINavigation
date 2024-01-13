//
//  AnimalDetails.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct AnimalDetails: View {
    let animalNumber: Int
    var body: some View {
        Text("selected animal number \(animalNumber)")
    }
}

struct AnimalDetails_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetails(animalNumber: 5)
    }
}
