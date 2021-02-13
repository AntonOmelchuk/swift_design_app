import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            MenuRow(image: "person.crop.circle", label: "My Account")
            MenuRow(image: "creditcard", label: "Billing")
            MenuRow(image: "person.and.person", label: "Team")
            MenuRow(image: "arrow.uturn.down", label: "Sign out")
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

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
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
