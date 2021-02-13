import SwiftUI

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Home: View {
    @State var show = false

    var body: some View {
        ZStack {
            Button(action: { self.show.toggle() }, label: {
                Text("Open Menu")
            })
            
            MenuView(show: $show)
        }
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

struct MenuView: View {
    var menuItems = ["My Account", "Billing", "Team", "Sign out"]
    var menu = menuData
    @Binding var show: Bool
    
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
        .rotation3DEffect(Angle(degrees: show ? 0 : 60), axis: (x: 0, y: 10.0, z: 0))
        .animation(.default)
        .offset(x: show ? 0 : -UIScreen.main.bounds.width)
        .onTapGesture {
            self.show.toggle()
        }
    }
}
