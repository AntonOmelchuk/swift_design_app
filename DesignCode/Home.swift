import SwiftUI

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Home: View {
    var menuItems = ["My Account", "Billing", "Team", "Sign out"]
    var menu = menuData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(menu) { item in
                MenuRow(image: item.icon, label: item.label)
            }
            Spacer()
        }
        .padding(.top, 20)
        .padding(30)
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing, 60)
        .shadow(radius: 21)
    }
}

struct MenuRow: View {
    var image = "creditcard"
    var label = "My Account"
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color(.black))
                .frame(width: 32, height: 32)
            Text(label)
                .font(.headline)
            Spacer()
        }
    }
}

struct MenuInterface: Identifiable {
    var id = UUID()
    var icon: String
    var label: String
}

let menuData = [
    MenuInterface(icon: "person.crop.circle", label: "My Account"),
    MenuInterface(icon: "creditcard", label: "Billing"),
    MenuInterface(icon: "person.and.person", label: "Team"),
    MenuInterface(icon: "arrow.uturn.down", label: "Sign out"),
]
