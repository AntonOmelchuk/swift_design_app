import SwiftUI

struct Settings: View {
    @State var recieve = false
    @State var number = 1
    @State var selection = 1
    @State var email = ""
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $recieve, label: {
                    Text("Recive notifications")
                })
                Stepper(value: $number, in: 1...10) {
                    Text("\(number) Notificaton\(number > 1 ? "s" : "") per week")
                }
                Picker(selection: $selection, label: Text("Favourite course"), content: {
                    Text("SwiftUI").tag(1)
                    Text("React Native").tag(2)
                })
                Section(header: Text("Email")) {
                    TextField("Your email", text: $email)
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
