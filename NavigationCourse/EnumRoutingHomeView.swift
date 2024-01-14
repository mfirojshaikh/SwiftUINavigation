//
//  EnumRoutingHomeView.swift
//  NavigationCourse
//
//  Created by Firoj on 14/01/24.
//

import SwiftUI

enum Route {
    case view2
    case view3
    case view4
    case secondFlowDetails
    case secondFlowLastView
}

class CustomRoutes: ObservableObject {
    @Published var routes: [Route] = []
    
    func back() {
        routes.removeLast()
    }
    
    func popToRoot() {
        routes = []
    }
}

struct EnumRoutingHomeView: View {
    @StateObject var customRoutes = CustomRoutes()

    var body: some View {
        NavigationStack(path: $customRoutes.routes) {
            VStack {
                Button("View2") {
                    customRoutes.routes.append(.view2)
                }
                .padding()
                Button("View4") {
                    customRoutes.routes = [.view2, .view3, .view4]
                }
                .padding()
                Button("SecondFlowDetails") {
                    customRoutes.routes.append(.secondFlowDetails)
                }
                .padding()
            }
            .font(.title)
            .background(.gray)
            .cornerRadius(10)
            .padding()
            .navigationDestination(for: Route.self) { value in
                switch value {
                case .view2:
                    View2()
                case .view3:
                    View3()
                case .view4:
                    View4()
                case .secondFlowDetails:
                    SecondFlowDetails()
                case .secondFlowLastView:
                    SecondFlowLastView()
                }
            }
        }
        .environmentObject(customRoutes)
    }
}

struct Root_HomeView_Previews: PreviewProvider {
    static var previews: some View {
        EnumRoutingHomeView()
    }
}

struct View2: View {
    @EnvironmentObject var customRoutes: CustomRoutes
    var body: some View {
        VStack {
            Text("View 2")
            Button("View 3") {
                customRoutes.routes.append(.view3)
            }
            Button("Back") {
                customRoutes.back()
            }
        }
    }
}

struct View3: View {
    @EnvironmentObject var customRoutes: CustomRoutes
    var body: some View {
        VStack {
            Text("View 3")
            Button("View 4") {
                customRoutes.routes.append(.view4)
            }
            Button("Back") {
                customRoutes.routes.removeLast()
            }
        }
    }
}

struct View4: View {
    @EnvironmentObject var customRoutes: CustomRoutes
    var body: some View {
        VStack {
            Text("View 4")
            Button("Back to Home/Pop to root") {
                customRoutes.routes = []
            }
            Button("last step of another flow") {
                customRoutes.routes = [.secondFlowDetails, .secondFlowLastView]
            }
        }
    }
}

struct SecondFlowDetails: View {
    @EnvironmentObject var customRoutes: CustomRoutes
    var body: some View {
        VStack {
            Text("SecondFlowDetails")
            Button("Continue to last screen") {
                customRoutes.routes.append(.secondFlowLastView)
            }
        }
    }
}

struct SecondFlowLastView: View {
    @EnvironmentObject var customRoutes: CustomRoutes
    var body: some View {
        VStack {
            Text("SecondFlowLastView")
        }
    }
}
