//
//  StudentDetails.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct StudentDetails: View {
    let name: String

    var body: some View {
        Text("Student Name - \(name)")
    }
}

struct StudentDetails_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetails(name: "student_name_placeholder")
    }
}
