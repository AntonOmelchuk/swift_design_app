import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("SwiftUI")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("accent"))
                    .padding(.top)
                Text("Certificate")
                    .foregroundColor(Color.white)
            }
            Image("Background")
            }
            .background(Color.black)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
