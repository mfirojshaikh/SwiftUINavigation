//
//  CustomerList.swift
//  NavigationCourse
//
//  Created by Firoj on 13/01/24.
//

import SwiftUI

struct Customer: Identifiable, Hashable {
    let name: String
    let id = UUID()
}

struct CustomerDetail: View {
    let details: Customer
    var body: some View {
        Text(details.name)
    }
}

struct CustomerList: View {
    let customers = [Customer(name: "Abc"), Customer(name: "Pqr"), Customer(name: "Xyz")]
    var body: some View {
        NavigationStack {
            List(customers) { customer in
                NavigationLink(customer.name, value: customer)
            }
            .navigationDestination(for: Customer.self) { customerDetils in
                CustomerDetail(details: customerDetils)
            }
        }
    }
}

struct CustomerList_Previews: PreviewProvider {
    static var previews: some View {
        CustomerList()
    }
}
