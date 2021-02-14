import SwiftUI

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Home: View {
    @State var show = false
    @State var showProfile = false
    
    var body: some View {
        ZStack {
            
            HomeList()
                .blur(radius: show ? 20 : 0)
                .scaleEffect(showProfile ? 0.95: 1)
                .animation(.default)
            
            ContentView()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(radius: 20)
                .animation(.default)
                .offset(y: showProfile ? 0 : UIScreen.main.bounds.height)
            
            HStack {
                MenuButton(show: $show)
                    .offset(x: -30, y: showProfile ? 0 : 80)
                    .animation(.default)
                Spacer()
                MenuRight(show: $showProfile)
                    .offset(x: -16, y: showProfile ? 0 : 88)
                    .animation(.default)
                
            }
            
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

struct CircleButton: View {
    var icon = "person.crop.circle"
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
        }
        .frame(width: 44, height: 44)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
    }
}

struct MenuButton: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack(alignment: .trailing){
            Button(action: { self.show.toggle() }) {
                HStack {
                    Spacer()
                    Image(systemName: "list.dash")
                        .foregroundColor(.black)
                }
                .padding(.trailing, 20)
                .frame(width: 90, height: 60)
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: Color("buttonShadow"), radius: 20, x: 0, y: 10)
            }
            Spacer()
        }
    }
}

struct MenuRight: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { self.show.toggle() }) {
                    CircleButton()
                }
                Button(action: { self.show.toggle() }) {
                    CircleButton(icon: "bell")
                }
            }
            Spacer()
            
        }
    }
}
