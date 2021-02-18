import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(1)
            ContentView().tabItem {
                Label("Certificates", systemImage: "rectangle.on.rectangle")
            }
            .tag(2)
            UpdateList().tabItem {
                Label("Updates", systemImage: "gear")
            }
            .tag(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environment(\.colorScheme, .dark)
            .environment(\.sizeCategory, .extraExtraLarge)
    }
}
